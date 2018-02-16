Before do
  @webdriver ||= Selenium::Webdriver.for(ENV['BROWSER'].downcase.to_sym)
  @webdriver_wait ||= Selenium::Webdriver::Wait.new(:timeout => ENV('DEFAULT_TIMEOUT').to_i)
  @pages = PageFactory.new(@webdriver, @webdriver_wait)
  @webdriver.navigate.to(ENV['BASE_URL'])
end

After do
  @webdriver.quit
end