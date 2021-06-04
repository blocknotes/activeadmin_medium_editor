# frozen_string_literal: true

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driver = ENV.fetch('SPEC_JS_DRIVER') { :selenium_chrome_headless } # rubocop:disable Style/RedundantFetchBlock
    driven_by(driver.to_sym)
  end
end
