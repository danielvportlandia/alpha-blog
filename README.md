# ALPHA BLOG

The purpose of this project, being my initial Ruby project, is to showcase my rudimentary development skills with Ruby on Rails. Many of the magic commands that Rails utilizes were omitted in favor of building out the MVC architecture from scratch. Click the link to see it in action [Alpha Blog](https://alpha-blog-0624.herokuapp.com/).

## Versions

| Name             | Version                |
|------------------|------------------------|
| Ruby             | 2.6.6p146              |
| Rails            | 6.1.3.1                |
| bcrypt           | 3.1.7                  |
| webpacker        | 5.0                    |
&nbsp;

## Development

When modifying the columns on models in the DB, run:

```console
rails generate migration name_of_migration_file
```

Then specify the changes the newly created migration file, afterwards, run:

```console
rails db:migrate
```

All available routes in Rails can be viewed by running:

```console
rails routes --expanded
```

Run the console with:

```console
rails c
```

Run the server with:

```console
rails s
```

Run the test suite with:

```console
rails test
```

Update a boolean attribute on an instance with toggle:

```console
user.toggle!(:admin)
```

Generates a functional controller test file:

```console
rails generate test_unit:scaffold name_of_model
```

&nbsp;

## Production

Ensure that the main branch is up-to-date in Github and that all gems are installed, then update the main branch in Heroku:

```console
git push heroku master
```

Then run any pending migrations in Heroku

```console
heroku run rails db:migrate
```

Afterwards, Production should be updated and is ready to view

```console
heroku open
```
