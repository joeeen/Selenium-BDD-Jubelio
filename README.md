<a name="readme-top"></a>
# Jubelio - Project Based Internship
## Introduction
Jubelio is an omni-channel platform designed to assist businesses in setting up online stores, managing orders, synchronizing stock, integrating marketplaces, applying cash registers, utilizing delivery services, and automating accounting records. It integrates with online stores, Point of Sales (POS), and marketplace chat management software.

This repository provides an example of automated testing for the Jubelio platform, which utilizes the following tools and frameworks:
<li>Selenium Webdrivers</li>
<li>Capybara</li>
<li>Cucumber</li>
<li>Rspec</li>

## Requirements
This project requires the following:
<li>Ruby (latest version is recommended)</li>
<li>Google Chrome (latest version is recommended)</li>

## Setup

1. Make sure Ruby is installed on your system. If not, you can download and install it from <a href="https://www.ruby-lang.org/en/documentation/installation/">here</a>.
2. Install Bundler by running `gem install bundler`
3. Clone the repository.
   ```
   git clone https://github.com/joeeen/jubelio-intern
   ```
5. Navigate to the project directory in your terminal.
6. Run `bundle install` to install the dependencies mentioned in the Gemfile.

## Usage
After you've set up everything, you can run the tests
### To run all the scenarios described in your feature files
Execute `cucumber` command from the root of your project directory.

### To run spesific feature file
Execute `cucumber features/file_name.feature` command
<p align="right">(<a href="#readme-top">back to top</a>)</p>
