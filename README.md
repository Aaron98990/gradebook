# README
# Ruby Script Application
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Rails version - newest

* Ruby version -- newest

* System dependencies

* Configuration

* Database type -- postgres
* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Installations
## For Ubuntu:
  To install rails on container
  
  To upgrade to ruby 2.6.5 on CodeAnywhere

  -run
  Rvm install ruby
 
  
  -install g++
* `sudo apt-get update`
* `sudo apt-get install g++`

-Install Postgresql

* `sudo apt-get update`
* `sudo apt-get install postgresql postgresql-contrib libpq-dev`
* `sudo -u postgres createuser --superuser postgres`
* `sudo -u postgres psql postgres`
Then enter: `\password postgres`

Enter password as 'password'

Enter password again

Enter \quit    -- to exit postgres

## For Windows
-Download Windows subsystem for linux

Follow the instructions on this link https://gorails.com/setup/windows/10



-Download a Virtual Machine

A virtual machine can be used to simulate a Linux environment if the previous step did not work.

I recommend Virtual Box (https://www.virtualbox.org/) as it offers a wide range of linux options. For the purposes of this app choose an ubuntu environment.

## For Mac
Use the following guide with your Mac version to download ruby. https://gorails.com/setup/osx/10.13-high-sierra

**Important: make sure you are installing ruby version 2.6.5 and Rails 5.1.6**

## Create Rails Application
- Once downloaded from github
- make sure you are in the gradebook directory
* `bundle install`

## Rails Database
-To create the DB in Rails:
* `rails db:create`
* will create the empty dev and test databases

-To create the tables
* `rails db:migrate`

-To seed sample data into the database (no seed data)
* `rails db:seed`

## Run Applicaiton
* `rails server` or `rails s`
