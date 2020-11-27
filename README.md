# README
The bottom of readme addresses creating and running the app after proper installations.
# Ruby Script Application
* Rails version - Above or Equal to 6.0.0 (recent)
* Ruby version -- (recent)
* Database type -- postgres

# Installations
## For Ubuntu:
-Upgrade Ruby
*  `rvm install ruby`
  
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
Choose one of two options...

-Download Windows subsystem for linux

Follow the instructions on this link https://gorails.com/setup/windows/10

-Download a Virtual Machine

A virtual machine can be used to simulate a Linux environment if the previous step did not work.
I recommend Virtual Box (https://www.virtualbox.org/) as it offers a wide range of linux options. For the purposes of this app choose an ubuntu environment.

## For Mac
Use the following guide with your Mac version to download ruby. https://gorails.com/setup/osx/10.13-high-sierra


# Create and Run Rails Application
- Once downloaded from github make sure you are in the gradebook directory (.../gradebook)
* `bundle install`
* (may need to install yarn)
* `webpacker:install`
* `rails db:create`
* `rails db:migrate`
* `rails db:seed`

## Run Applicaiton
* `rails server` or `rails s`
