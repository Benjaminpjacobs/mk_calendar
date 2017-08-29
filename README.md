# Calendar Challenge

## Description
A calendar display that allows a user to add an array of objects to the database and see them displayed on a daily calendar
broken down by time.

## Stack
This project submission is using Rails 5.1.3, ruby 2.4.1, JavaScript, JQuery and a PostgreSQL database.

## To Run Locally:

* Update Ruby and install Rails and psql if not already updated/installed.
* Clone down repository to a local directory.
* ```cd mk_calendar``` 
* run ```bundle install```
* run ```rake db:create```
* run ```rake db:migrate```
* run ```rails server``` to start up the application and ensure it is running on localhost:3000
* navigate to http://localhost:3000 in the browser

There you will see the empty calendar. From you can either enter an array of JSON objects into the form or you can use the 
```rake db:seed``` command to seed the database with events. All events are entered in 24hr time for this prototype. The format would look like:
```
[
{"start_time": "09:00", "end_time": "10:00"}, 
{"start_time": "10:00", "end_time": "11:00"}
]
```

Thank you for the opportunity to complete the challenge!

