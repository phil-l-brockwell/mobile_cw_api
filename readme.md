# README
A Rails API used to serve an Ionic mobile app.

## Mobile App
This API was created in conjunction with an Ionic/Phonegap [App](https://github.com/robertpulson/greenwich-fitness-app), built while studying at the Greenwich School of Management. It was built using Ruby on Rails and deployed with Heroku.

## Database
The PSQL database contains 3 models:

* Item
* Consultant
* Review

## Routes
The Item, Consultant and Review data can be accessed with get requests to the following routes which return JSON:

[Consultants](https://greenwich-fitness-api.herokuapp.com/api/consultants), [Items](https://greenwich-fitness-api.herokuapp.com/api/items) and [Reviews](https://greenwich-fitness-api.herokuapp.com/api/reviews).

Post requests can also be made to the Review route and an attached review will be added to the DB.

## Screenshots
![ScreenShot](https://github.com/robertpulson/mobile_cw_api/blob/master/screenshots/Screen%20Shot%202015-09-15%20at%2000.09.53.png)

![ScreenShot](https://github.com/robertpulson/mobile_cw_api/blob/master/screenshots/Screen%20Shot%202015-09-15%20at%2000.11.06.png)

## Getting Started

To use this API, first clone it with: `git clone git@github.com:robertpulson/greenwich-fitness-app.git`.

Navigate to the directory: `cd greenwich-fitness-app`.

Create and migrate the database `rake db:create && rake db:migrate`.

Run it from your local host using `rails s` and then visit `localhost:3000` in your browser.
