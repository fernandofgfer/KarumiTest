[![Build Status](https://travis-ci.org/fernandofgfer/KarumiTest.svg?branch=master)](https://travis-ci.org/fernandofgfer/KarumiTest) [![codecov](https://codecov.io/gh/fernandofgfer/KarumiTest/branch/master/graph/badge.svg)](https://codecov.io/gh/fernandofgfer/KarumiTest)

# KarumiTest

This is my test for Karumi job offer. 

# Codebase
## Architecture

I've decided to use VIPRE as an iOS architecture because I love how you can separate all layers, doing a clean architecture and providing the possibility to test all.

The VIPER part is divided into two modules **Login** and **Logout**, where you can find all VIPER layers (view, presenter, interactor, router).

To inject all objects, I've used two assemblers, one for Login and another for Logout. The assembler creates all dependencies that his module needs.

## Networking

We don't have an API to do the login call, so I've used a mock class to simulate an API call. I've created *ApiClientProtocol* to inject a mock. The mock is returning a .json file with a user inside. If this was a real example, I would use this gist to create real Api Calls [https://gist.github.com/fernandofgfer/210625779f87d5fda50184afa8ac60bc](https://gist.github.com/fernandofgfer/210625779f87d5fda50184afa8ac60bc)

## Stores
Since we have to save the user token in the app, I've used a store to save the information in userDefaults. This store is using the standard singleton that UserDefatults provides to us.

## Tests

I've added several unit tests to check the functionality in presenters and interactors. In future steps, I would like to add UI test, and if I add a real api client, I would like to add also http stub tests.

I've used sourcery to generate mock classes, instead, create it one by one. With sourcery we create mock classes like stubs or spies directly from a protocol

# Project

The project has been created in github, with a lot of different cards to implement it. We have four categories of cards: development, CI, set up the project, and documentation. 
Each card has associated an issue, and each issue has associated a pull request.

The project has Swiftlint added to control the quality of the code.

# CI
At the beginning, I started the project using github actions, but I had some problems trying to upload the code coverage to Codecov, so I changed to Travis CI.

The tests are executed in each push and each pull request.
