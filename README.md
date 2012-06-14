# ProvisionM

An example external provisioning source for OpenNMS.

## Demo

See the demo @ [heroku](http://provisionm.heroku.com). If you want to make changes, use the default login credentials:

	email: admin@admin.local
	password: password


## Requirements

Ruby 1.9. PostgreSQL. 

## Installation

1. git clone
2. cd provisionm
3. bundle install
4. Edit config/database.yml so it uses your PostgreSQL credentials. 
5. rake db:setup
6. rake db:seed
7. foreman start

Now you should be able to access this at http://localhost:5000. The initial login credentials are:

	email: admin@admin.local
	password: password

Go to the UI and login up the the right hand corner. You won't be able to do squat until then but look at an empty website.

## Upgrading

If you're upgrading from SQLite, I didn't provide an upgrade path. Sorry. 

1. git pull
2. rake db:migrate
3. Contact me when everything breaks. 

## Changing the default password.

If you wish to change the password, fire up the CLI with "rails c" and:

    user = User.find_by_email('admin@admin.local)
    user.password= 'yournewpasshere'
    user.save
		
Doing this via the web is disabled in this app, you don't really want folks doing this, do you?

## Status

So this basically works, and it's for example. There's some things I plan on doing with it later.

## Use

See the in-app docs or [on the demo](http://provisionm.herokuapp.com/help).