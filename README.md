# terminal-gizmos
A repo with python experiments, visualizations and programs, mostly done for fun

## TODO, global
* refactor this todo to explain wtf is this repo
* think about configs - colors, boldness, borders, delays, program-specific settings like charset for ascii
* comments ¯\\_(ツ)_/¯
* push builds?

## ascii
* move stuff to functions
* for the love of god, add borders
* async play/pause, or nodelay()+getch()
* load charset or choose from "only letters", "letters+numbers", "letters+numbers+symbols"
* dictionary of words?

## drone control
* load regions, their locations and origin points from json
* possible statuses:
	* location, as x/y and region from graph from "the Signal from Tölva"
	* azimuth
	* connection status
	* charge level
	* battery health
	* tools status
	* ...
* log messages:
	* global:
		* weather events - "\[severity\] superheated/toxic/(electro)magnetic/ion storm detected", "vapors/fog", "multiple unknown creature sightings", ...
		* cataclysmic events - "satellite debris/satellite/satellite probe atmospheric re-entry", "nuclear strike(???)", "\[type\] station \[emission type\] burst/emission", ...
		* graph/connection events - connectivity loss between 2 neighbouring regions, for X seconds
		* events of extreme severity - disable some drones or have long-lasting effects on all of them; very rare, may be triggered if specific conditions are met
	* drone-specific:
		* location and azimuth - change continously or in some random manner; location is set to region origin point on recharge/maintenance, and is no farther from region location than X points
		* connectivity status:
		* recharge/maintenance - go to region\'s origin point, reset state of all tools
		* node/tool malfunction - weather/cataclysmic event can cause malfunctions, and specific events cause specific malfunctions; they can be temporary or premanent; you have to repair them or wait them out 
		* charge level and battery - charge is reduced with every tick, when charge is lower than a threshold value - recharge and reduce battery health; whel battery health is low - perform a maintenance check which is 3-8 times longer than a recharge which resets the health
