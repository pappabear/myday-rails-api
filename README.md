# README

Simple RESTful API backend built in Rails 5.  Primary use is to provide a real API backend for projects where I'm figuring out React and Redux.

Got it started with:

* $ rails new <appname> --api -T

* $ rails g model Todo title:string complete:boolean owner:string

* $ rails db:migrate

* $ rails g controller Todos

Get it setup with:

* $ bundle

* $ rails db:migrate

Run it with:

* $ rails s -p 3001
