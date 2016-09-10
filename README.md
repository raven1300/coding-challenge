# coding-challenge
Zendesk coding challenge - Nicholas Lee

The following tests needed to be written:

1. I want to add a Todo item
2. I want to edit the content of an existing Todo item
3. I can complete a Todo by clicking inside the circle UI to the left of the Todo
4. I can re-activate a completed Todo by clicking inside the circle UI
5. I can add a second Todo
6. I can complete all active Todos by clicking the down arrow at the top-left of the UI
7. I can filter the visible Todos by Completed state
8. I can clear a single Todo item from the list completely by clicking the Close icon
9. I can clear all completed Todo items from the list completely


In order to run the tests, it is assumed Ruby is installed (2.1.8 is preferred) and Selenium-webdriver is up and running on the machine executing the tests.

To install the required gems, simply run the following command from the project's base directory:

bundle

Then, to run the tests, simply run the rspec command:

rspec

From there, webdriver will initialize and begin to run the tests.

To get more information about the tests that are being run, there are options:
1. run the rspec command in this way instead:
rspec spec --format documentation
2. Run the spec file from within an IDE such as RubyMine and it will output green and red boxes for the passing and failing tests respectively.
