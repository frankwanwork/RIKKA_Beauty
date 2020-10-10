# Cloug9/Linux



## Install Dependencies
The commands are for Mac OS. For Ubuntu, you just need to change `brew install` to `sudo apt-get install`.
```
brew install ruby-dev libssl-dev libpq-dev
brew install postgresql
bundle install --without production
```

## Setup postgresql
```
brew services start postgresql
createuser -P -d 
[set password: rikka]
bundle exec rake db:create
```

## Start rikka
```
rails server -b 0.0.0.0
```

Then you may access the application on http://localhost:3000.