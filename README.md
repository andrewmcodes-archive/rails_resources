# Rails Resources

Resources for Ruby on Rails.

## Running Locally

### Prerequisites

- Ruby: 2.7
- Bundler: 2.1.4
  - `gem install bundler:`
- Postgres
  - `brew install postgresql`
- Heroku CLI (not needed unless deploying)
  - `brew tap heroku/brew && brew install heroku`
- yarn: 2.0.0
  - `npm install -g yarn@berry`

```sh
git clone git@github.com:andrewmcodes/rails_resources.git # or clone your own fork
cd rails_resources
bin/bootstrap
# heroku local
```

Your app should now be running on [localhost:3000](http://localhost:3000/).

## Deploying to Heroku

```
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```

Alternatively, you can deploy your own copy of the app using the web-based flow:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
- [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby)
- [Heroku Ruby Support](https://devcenter.heroku.com/articles/ruby-support)
