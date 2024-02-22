# A Ruby on Rails reinterpretation of AirBnB with dresses 👗
## Developed during the Le Wagon Full-Stack Development Bootcamp from a team of 3 amazing women in 1 week

## Where is it hosted currently?
    https://rent-a-dress-cdc99ed9126a.herokuapp.com/

## For which screens is it developed?
Currently only for big screens

## How does it work?
Visit the page and create an account. You can explore the interface and find out more about the features of the app:
* A homepage with all available dresses
* A user profile with the dresses they offer and booking requests from other users, as well as their own
* Each dress can be viewed in more detail and edited or deleted by the owner, or booked by an other user (using Flatpickr)
* An owner can accept or decline a booking request
* A user can delete a booking request, with consequences depending on the booking status

## For developers
### Requirements
Make sure you have:
* Ruby v3.1.2 (can be checked with ```ruby -v```)
* [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html) v7.1.3 (can be checked with ```rails -v```)

### Cloudinary
Create a ```.env``` file in the root directory for your:
* CLOUDINARY_URL (https://cloudinary.com/)

Copy in the ```.env``` file the following, replacing the square brackets and their content, with your Cloudinary url:
```
CLOUDINARY_URL=[example_url]
```
### Configure PostgreSQL
Run on the command line:
```
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```
```
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb superuser;"
```

### Ruby gems
From the root folder, run on the command line:
```
bundle install
```

### Database
Create a new database:
```
rails db:create
```
Apply all pending migrations to the database:
```
rails db:migrate
```
Populate the database with the initial data (optional):
```
rails db:seed
```

### Run the app on a local server
Run on the command line:
```
rails s
```
Visit localhost:3000 with your web browser.
