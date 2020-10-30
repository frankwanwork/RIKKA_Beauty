# Cloud9/Linux

## Update postgre configuration
 Go to the path: `config/database.yml`
 
 Please change the username as `ec2-user` (line7)

## Install Dependencies

```
sudo yum install postgresql-devel
sudo yum install postgresql-server
sudo service postgresql initdb
sudo service postgresql start
bundle install --without production

```

<!--```-->
<!--npm install -g yarn-->
<!--```-->

## Setup postgresql
```
sudo service postgresql start
sudo -u postgres createuser -s ec2-user
[set password: rikka]
bundle exec rake db:create
rake db:migrate
```

## Start rikka
```
rails s -p $PORT -b $IP
```
