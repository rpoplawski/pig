# Game of Pig


## Setup
 - run `bundle install`

## How to Play
 - run `ruby bin/play.rb` to start the game


## How to run the tests
 - run `ruby spec/NAME_OF_TEST.rb` to run a test file



# Project Structure Readme
This folder structure should be suitable for starting a project that uses a database:

* Fork this repo
* Clone this repo
* `rake generate:migration <NAME>` to create a migration (Don't include the `<` `>` in your name, it should also start with a capital)
* `rake db:migrate` to run the migration and update the database
* Create models in lib that subclass `ActiveRecord::Base`
* ... ?
* Profit


## Rundown
----------------------------------------------

The user must be aable to play a game called 'pig'. Basically, the player rolls the dice and accrues points that add to successive rolls untiley roll a '1'. When a '1' is rolled, the player gets '0' points for that round and the turn is now handed to player 2, if that player exists. The first person to get to 100 point or more wins. The rules of the programs are rather sraight forward in that the game tells asks questions of the user and requests feedback. Execute this command and your in business!                  <ruby bin/play.rb>
---------------------------------------------------

``
.
├── Gemfile             # Details which gems are required by the project
├── README.md           # This file
├── Rakefile            # Defines `rake generate:migration` and `db:migrate`
├── config
│   └── database.yml    # Defines the database config (e.g. name of file)
├── console.rb          # `ruby console.rb` starts `pry` with models loaded
├── db
│   ├── dev.sqlite3     # Default location of the database file
│   ├── migrate         # Folder containing generated migrations
│   └── setup.rb        # `require`ing this file sets up the db connection
└── lib                 # Your ruby code (models, etc.) should go here
    └── all.rb          # Require this file to auto-require _all_ `.rb` files in `lib`
```
