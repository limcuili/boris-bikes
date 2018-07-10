Pairing Challenge #2

I'm pairing with Dani today! We aim to get at least 10 questions done in the challenge.

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
This is a NameError, in file path /Users/LimCuiLi/.rvm/rubies/ruby-2.4.1/bin/irb:11:in `<main>', on line 1 of irb.
This error is raised because 'DockingStation' is undefined.
We will have to intialize/define at the start of the document.

## From Feature Tests to Unit Tests
