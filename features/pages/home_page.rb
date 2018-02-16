require_relative './page_base.rb'
class HomePage < PageBase

  def await
    @webdriver_wait.until { @webdriver.find_element(home_keyword) }
  end

  private

  def home_keyword
    {:class => 'homepages-root'}
  end

end