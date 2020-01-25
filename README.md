# Rails Resources

Community curated resources for Ruby on Rails.

## Running Locally

### Prerequisites

- Ruby: 2.7
- Bundler: 2.1.4
  - `gem install bundler:`
- Yarn
  - `brew install yarn`
- Postgres
  - `brew install postgresql`
- Redis
  - `brew install redis`
- Heroku CLI (not needed unless deploying)
  - `brew tap heroku/brew && brew install heroku`

```sh
git clone git@github.com:andrewmcodes/rails_resources.git # or clone your own fork
cd rails_resources
bin/setup
```

This should setup the database and see it with some data as well.

Run `bin/rails s` in your terminal and the app should be live at [localhost:3000](http://localhost:3000/).

## Auth0

1. [Sign up](https://auth0.com/signup) for Auth0 account
2. Create new application
    - Application type is "Regular Web Applications"
3. Go to settings page for your new Auth0 app
    - Copy the Domain, Client ID, & Client Secret to `.env`
    - Set Token Endpoint Authentication Method to `Post`
    - Setup an ngrok tunnel
    - Set Allowed Callbacks URLs to `https://MY_NGROK_HOST.ngrok.io/auth/auth0/callback`
    - Set Application Login URI, Allowed Lougout URLs, and Allowed Origins (CORS) to `https://MY_NGROK_HOST.ngrok.io/`
    - Save changes
4. Restart the Rails server and you should be able to login via Auth0

## Deploying to Heroku

```sh
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```

Alternatively, you can deploy your own copy of the app using the web-based flow:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/andrewmcodes/rails_resources). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/andrewmcodes/rails_resources/blob/master/CODE_OF_CONDUCT.md).

### Coding Standards

This project uses [Standard](https://github.com/testdouble/standard) to minimize bike shedding related to code formatting.

Please run `bin/format` prior to commiting.

## Code of Conduct

Everyone interacting in the rails_resources project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/andrewmcodes/rails_resources/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
