Pairing Challenge #2

I'm pairing with Dani today! We aim to get at least 10 questions done in the challenge.

Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

## From User Stories to a Domain Model

```
As a person,  
So that I can use a bike,  
I'd like a docking station to release a bike.
```

```
As a person,  
So that I can use a good bike,  
I'd like to see if a bike is working
```
nouns = person, bike, docking station  
verbs = use, release a bike, see if a bike is working

Below is a functional representation of the above two stories

| Object | Messages |
| :-------: | :-------: |
| person |
| bike | working? |
| docking_station | release_bike |
