require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'rspec'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "--window-size=1920,1080" ]
      }
    )
  )
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css