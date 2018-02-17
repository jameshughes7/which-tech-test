# Which? tech test

Task
----
Build a test framework using Ruby, Cucumber and Capybara/Selenium. This framework will test the functionality of the TV landing page <a href="https://www.which.co.uk/reviews/televisions">Which? TV Landing Page</a>,  a very popular page on the Which? website.


Approach
---

- Used the Page Object Model to create a ruby/cucumber/selenium test framework
- Made use of hooks to facilitate the smooth running of every scenario
- Page Factory file used as a controller for page object models
- Features and Scenarios written using BDD methodology to test the behaviour of the TV landing page. Careful consideration was made when writing these to test behaviour rather than implementation.
- Used Pry to debug my code throughout the process

## How to install
- git clone git@github.com:jameshughes7/which-tech-test.git
- cd which-tech-test
- bundle install


## To run
- cucumber -t @complete
- if you would like to run specific scenarios, change the scenario tags from @complete to your own custom tag e.g. @jhwip 


## Technology
- Ruby
- Cucumber
- Selenium


## Improvement
- To improve upon the testing framework, I would do the following:
    - Add screenshot functionality to the reports
    - Refactor code with helper methods e.g. the **navigate_to_television_reviews_using_banner** method
    - Add a component directory to include common component classes. These would reflect components common to the various page object models.
  
