# frozen_string_literal: true

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driver = ENV.fetch('SPEC_JS_DRIVER', :selenium_chrome_headless).to_sym
    driven_by(driver)
  end
end
