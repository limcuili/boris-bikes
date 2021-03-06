Pairing Challenge #2

I paired with Danielle and then with Stephanie for this challenge!

Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

## From User Stories to a Domain Model

```
As a person,  
So that I can use a bike,  
I'd like a docking station to release a bike.

As a person,  
So that I can use a good bike,  
I'd like to see if a bike is working
```
nouns = person, bike, docking station  
verbs = use, release a bike, see if a bike is working

Below is a functional representation of the above two stories

| Object | Messages |
| :-------: | :-------: |
| Person |
| Bike | working? |
| DockingStation | release_bike |

Bike --> working? --> true/false  
DockingStation --> release_bike --> Bike --> Person

## From Domain Model to a Feature Test

in Interactive Ruby (irb), setting a variable docking_station = DockingStation results in an error:  
```
NameError: uninitialized constant DockingStation
	from (irb):1
	from /Users/LimCuiLi/.rvm/rubies/ruby-2.4.1/bin/irb:11:in `<main>'
```

This is a NameError, in file path /Users/LimCuiLi/.rvm/rubies/ruby-2.4.1/bin/irb:11:in'main', on line 1 of irb.
This error is raised because 'DockingStation' is undefined.
We will have to intialize/define at the start of the document.

## From Feature Tests to Unit Tests

I initiatialized RSpec within the project and created a spec file for the DockingStation object. I then got the following error as a **unit test**:
```
Failure/Error:
  describe DockingStation do
  
  end

NameError:
  uninitialized constant DockingStation
# ./docking_station_spec.rb:1:in `<top (required)>'
```
We believe this is because I have not coded the RSpec such that we expect certain outputs from certain inputs.
Further, this is a Ruby error message, not an RSpec message as before. This is because it's reading the spec file for the DockingStation object is being read as a ruby file.

I have now moved back to the **Feature Test** and added ./lib/docking_station.rb that defines a class on the object DockingStation. I then "connected" the rspec to the new object file by typing in "require 'docking_station'" into DockingStation's spec file.
I had to go on irb and type in "require './lib/docking_station'", and now we do not have the NameError as before when letting "docking_station = DockingStation.new".
However, a NoMethodError resulted in "bike = station.release_bike". I believe this is because we have not defined a class for the object station, and we have not defined a release_bike method within that class.

