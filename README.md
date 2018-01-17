# Bart dashing widget for hadashboard

The following is a widget I created for hadashboard by FlorianZ. More information on hadashboard can be found here: [https://github.com/FlorianZ/hadashboard](https://github.com/FlorianZ/hadashboard)

The widget is a 2x2 widget that shows you the how long until the next train and the train after that, it also includes the number of cars in the train.

# Setup
Copy the `widgets` and `jobs` folder into your hadashboard directory.

Edit the `bart.rb` to set your station and direction. I am using the free api key, but you can also change the api key to your own if you wish.

Add the widget to your dashboard

# Bart Stations
* `12th` 12th St. Oakland
* `16th` 16th St. Mission
* `19th` 19th St. Oakland
* `24th` 24th St. Mission
* `ashb` Ashby
* `balb` Balboa Park
* `bayf` Bay Fair
* `cast` Castro Valley
* `civc` Civic Center
* `cols` Coliseum
* `colm` Colma
* `daly` Daly City
* `dbrk` Downtown Berkeley
* `dubl` Dublin/Pleasanton
* `deln` Cerrito del Norte
* `plza` El Cerrito Plaza
* `embr` Embarcadero
* `frmt` Fremont
* `ftvl` Fruitvale
* `glen` Glen Park
* `hayw` Hayward
* `lafy` Lafayette
* `lake` Lake Merritt
* `mcar` MacArthur
* `mlbr` Millbrae
* `mont` Montgomery
* `nbrk` North Berkeley
* `ncon` North Concord
* `orin` Orinda
* `pitt` Pittsburg/Bay Point
* `phil` Pleasant Hill
* `powl` Powell St.
* `rich` Richmond
* `rock` Rockridge
* `sbrn` San Bruno
* `sfia` SFO
* `sanl` San Leandro
* `shay` South Hayward
* `ssan` South San Francisco
* `ucty` Union City
* `wcrk` Walnut Creek
* `wdub` West Dublin
* `woak` West Oakland

# Example usage
```
<li data-row="1" data-col="1" data-sizex="2" data-sizey="2">
  <div data-id="bart" data-view="Bart"/>
</li> 
```