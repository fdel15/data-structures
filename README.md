#Data Structures

The two challanges bellow, will help reinforce the concepts of the data structures 
we've discussed. Stacks and Queues are handy in many real world situations. Durning the challenge try to concentrate
on why each structure is the best fit. Then try and think of other problems might solve. 

## Challenge 1
The Raccoon Den is one of the best nightclubs in the city. Each night of the week, 
the owner lets 150 people into the club. No more, no less. Demand has become so great that the owner has decided to
reduce the line by letting people add their names to the list from a text message. 

Write a program that will take csv of club gowers ( "first_name, last_name, phone_number" ) and put them in a virtual line.
The first name that is received will be the first person that gets allowed in the doors, vereifed by their phone number. 
After the 150th person the system will send out a rejection message.

## Challenge 2
At the parking lot across the street, the manager realizes that his employees spend a lot of their time trying to find 
what spot the cars are in. In order to save them the time she hires us to write an application that will keep track of the 150 spots. 

Create an application that will take a list of 23 cars, and park them in spots from the back of the lot to the front (First car in the lot is the last spot). 
Return the Car and Spot so it can be printed on tickets for the owner. At the end of the night the cars leave the lot in the opposite order they arrived.

* The first car to get parked will be the last car to leave the lot. Getting spot 1. 
* The last car to get parked will be the first car to leave the lot. Getting spot 20. 
* Use a hash {Car Name: "Aston Martin DB5", spot: 20 } to represent the car data 

