# Skeleton Application For TDE

- [Skeleton Application For TDE](#skeleton-application-for-tde)
    - [Base Application Structure](#base-application-structure)
    - [Steps To Use This Skeleton](#steps-to-use-this-skeleton)
    - [Notes & Idiosyncracies](#notes--idiosyncracies)
    - [Running The App Locally](#running-the-app-locally)
    - [Installing New Ruby Gems](#installing-new-ruby-gems)
    - [Installing New JavaScript Packages](#installing-new-javascript-packages)
    - [TODO](#todo)
    - [Available Production Environment Variables](#available-production-environment-variables)

## Base Application Structure

This app is being built based primarily on [this guide][1]. It is a combination of Ruby on Rails for the backend API and React for the frontend single-page application (SPA). The entire application is served as a single app from Heroku.

## Steps To Use This Skeleton

1. Clone this repo
2. Search across the repo for "skeleton", case-insensitive, excluding these paths: `*/node_modules/*`,`*/log/*`,`*/tmp/*`
3. Replace all those instances of "skeleton" with your application's name, matching the existing case.
4. Change `client/public/favicon.ico` to your new desired favicon
5. Create a new repository on Github for your new application
6. Change the origin of this repo to point at your new repo's URL: `git remote set-url origin git://new.url.here`
7. Push the code there: `git push -u origin master` 

## Notes & Idiosyncracies

1. ApplicationController inherits from `ActionController::Base` so that we can use ActiveAdmin, but the rest of the application runs as an API. When creating a new controller, make sure it inherits from `ApiController`, like so:

```
class ExampleController < ApiController
end
```

rather than from `ActionController::Base` or `ActionController::API`

2. Any packages need to be installed inside the docker container. You can get there by running `docker exec -ti 

## Running The App Locally

Technologies needed:
- Ruby
- Rails
- Javascript
- Node
- Yarn
- Heroku
- Docker

Run `docker-compose up`

## Installing New Ruby Gems

Run `bundle add gem_name`.

## Installing New JavaScript Packages

You have two options:

1. Run `yarn --cwd client add package_name` (you need `--cwd client` to install these in the right place)
2. Run `rake add[package_name]` (This is another custom `rake` command, defined in `lib/tasks/add.rake`)

## TODO
- Get Docker up and running
- Get user authentication and authorization up and running (super simple stuff :roll_eyes:)
- Write sample backend controller/routes and frontend component for reference purposes (maybe users? Gets into tricky territory, since it needs to be pretty universal)
- Explore `.fetch()` vs. other alternatives for retrieving API endpoints
- Potentially move custom `rake` tasks into `make`
    - Advantages: expose apprentices to `make`, more language agnostic
    - Disadvantages: we would need to learn make, adds an extra tool to our process

## Available Production Environment Variables

DATABASE_URL
RAILS_MAX_THREADS
SKELETON_DATABASE_USERNAME
SKELETON_DATABASE_PASSWORD
RAILS_SERVE_STATIC_FILES
RAILS_LOG_TO_STDOUT
SKELETON_HOST_NAME

[1]: https://blog.heroku.com/a-rock-solid-modern-web-stack