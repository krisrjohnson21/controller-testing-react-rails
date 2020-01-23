# Welcome to Floofr!

The top-rated website for Floof posting. Unfortunately, the developers of Floofr did not test-drive the development of this app, so we can't tell for sure if the Floof posts are being created reliably! Luckily, they've hired you on board to test their application.

### Set Up
```no-highlight
  $ et get controller-testing-react-on-rails
  $ cd controller-testing-react-on-rails
  $ bundle
  $ yarn install
  $ bundle exec rake db:create
  $ bundle exec rake db:migrate
  $ bundle exec rake db:seed
```

### What's going on here?

You'll notice we have a few routes in our `routes.rb`. One of them allows you to visit the `show` page of a `floof` to see that floof's posts. React picks up on the `div` on that page to serve up our React app. We also have routes for  some `api` `resources` to grab data from our database. Our React components hit these endpoints to fetch the data from our back end into our front end.

*Note:* In order to view this in the browser, you'll need to visit the show page for an individual floof at `localhost:3000/floofs/1`. There is no index route as this assignment is focused on our controller tests.

### Your Job

We want to make sure that Rails is communicating effectively with React. Write some Rspec tests to make sure that our API endpoints are behaving as you expect.

You should test:

* That the `/api/v1/floofs/:id` endpoint returns the floof in question and its associated posts.

* That the `POST` request to `/api/v1/posts` creates a `Post` with the floof and post information that we expect.

Your tests should live in the `spec/controllers/api/v1` folder. They can be run by executing `bundle exec rspec`.

### Extra Challenges

You've successfully convinced the team at Floofr that Test Driven Development is the way to go! They've hired you on to fully test their app!

* Write model tests to ensure that the Floof class and the Post class are working as expected

* Write Jasmine/Enzyme tests to make sure the React components are working as expected
