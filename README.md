# Test Assignment
This repository contains a total of 2 test cases based on robot framework using the selenium library.

# Prerequisites
* Robot Framework
* Python 3 packages: robotframework-selenium library

## Contents & Structure
The project contains only one file named _search.robot_ under the root folder named _**first-script**_.
It contains both the test cases under the section _test cases_ . A brief description of the test cases:
* The first test case is meant to open the browser,navigate to the google search page, verify the URL and then close the browser window.
* The second test case would naviagte to the google search page,search for the word _'Python'_, verify if the page conatins the search term, wait for 5 seconds and close the browser.

The settings section in the file includes the libraries used in this case the selenium library.
The variable section includes all the details in relation to the locators, broswer information and the URL that needs to be accessed.

## How to run
To run these test scripts locally, clone this repository to a machine.

Following are the steps to run tests using windows command prompt:
* Open command prompt in the directory where you have cloned the repository.
* type in the command **_robot Search.robot_**.
* Additional instructions can be added at runtime if the results are needed in a specific location or test cases with only certain tags are required to be run. This command could modified to _**robot -d {name of the results folder} --include {tagName} Search.robot**_
