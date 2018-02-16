Before do
  @webdriver ||= Selenium::WebDriver.for(ENV['BROWSER'].downcase.to_sym)
  @webdriver_wait ||= Selenium::WebDriver::Wait.new(:timeout => ENV['DEFAULT_TIMEOUT'].to_i)
  @pages = PageFactory.new(@webdriver, @webdriver_wait)
  @webdriver.navigate.to(ENV['BASE_URL'])
  @pages.home_page.await
end

After do
  @webdriver.quit
end