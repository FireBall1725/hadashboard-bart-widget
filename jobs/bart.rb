require 'net/http'
require 'json'

SCHEDULER.every '2m', first_in: 0 do
  origin    = 'dubl'
  direction = 's'

  etd = Net::HTTP::Get.new('/api/etd.aspx?cmd=etd&key=MW9S-E7SL-26DU-VV8V' +
    "&orig=#{origin.upcase}&dir=#{direction.upcase}&json=y"
  )

  resp = Net::HTTP.start('api.bart.gov') do |http|
    http.request(etd)
  end
  
  json = JSON.parse(resp.body)

  station_name = json['root']['station'][0]['name']
  destination_name = json['root']['station'][0]['etd'][0]['destination']
  estimate = json['root']['station'][0]['etd'][0]['estimate']

  # priamry train
  first_train = estimate[0]['minutes']
  if first_train.numeric?
    first_train = "#{first_train} minutes"
  end
  first_train_length = estimate[0]['length']

  # secondary train
  second_train = "#{estimate[1]['minutes']} minutes"
  second_train_length = estimate[1]['length']

  send_event('bart', {
    station: "#{station_name} Station",
    destination: "Destination: #{destination_name}",
    first_train_eta: first_train,
    first_train_length: "#{first_train_length} car train",
    second_train_eta: second_train,
    second_train_length: "#{second_train_length} car train"
  })
end

class String
  def numeric?
    Float(self) != nil rescue false
  end
end