# Boatee

This is an airbnb style app for hiring boats for holidays.

> Have a go! [_here_](https://portfolio-boatee.herokuapp.com/). <!-- If you have the project hosted somewhere, include the link here. -->
## Table of Contents
- [General Info](#general-information)
- [Technologies Used](#technologies-used)
- [Features](#features)
- [Setup](#setup)
- [Project Status](#project-status)
- [Room for Improvement](#room-for-improvement)
- [Acknowledgements](#acknowledgements)

<!-- * [License](#license) -->

## General Information

- This is a airbnb style website, written in ruby on rails and hosted on Heroku.
- This allows you to book boats for a holiday based on availability for certain dates.
- This project was completed as part of the Le Wagon fullstack developer bootcamp and served as an opportunity to develop my skills in:

* ruby on rails
* javascript
* scss
* javascript libraries
* git version control
* user authentication
* REST APIs
* production deployment
* Pundit
* implementation of image hosting services

## Technologies Used

- Rails 6.1.5.1 - Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates)
- Ruby 3.0.3
- yarn 1.22.17
- SCSS
- Cloudinary image hosting
- [_devise_](https://github.com/plataformatec/devise/)
- jQuery
- bootstrap 5
- font-awesome 6
- PostgreSQL 12

## Features

- Hire Boats as a user.
- As a boat owner you can list boats and delete them
- Search for boats
- Book boats using the datepicker
- Cancel and amend bookings
- View past and future bookings
- Review Past bookings

## Setup

You will need Ruby 3.0.3 and Rails 6.1.5.1. Both can be installed via rbenv
You will also need a Cloudinary account (free is sufficient)
Download/Fork/Clone the repo and cd into the repo root directory in your terminal

To check that you have the correct ruby version run:
`ruby --version`

Run: `touch .env` followed by `echo '.env*' >> .gitignore` <br>
Add your cloudinary api to the .env file `CLOUDINARY_URL=cloudinary://2985**************:***********************`<br>

Then run:
`bundle install`
to install the required gems

Run:
`yarn install`
to install the js packages

Run:
`rails db:create`
`rails db:migrate`
`rails db:seed`
to set up your database

Run:
`rails s`
to start a local rails server

## Project Status

Project is: _in progress_

## Room for Improvement

To do:

- Add Mapbox to show boat locations <--- _Currently working on_
- Add more complex search for boats based on location
- Update the seed with more boat varieties. 

## Acknowledgements
Created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team along with the help of Le Wagon Teaching Assistants.<br>
