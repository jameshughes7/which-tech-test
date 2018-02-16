class PageBase

  def initialize(webdriver, webdriver_wait)
    @webdriver = webdriver
    @webdriver_wait = webdriver_wait
  end

  def navigate_directly_to_television_reviews
    @webdriver.navigate.to(ENV['BASE_URL'] + "reviews/televisions")
  end

  def navigate_to_television_reviews_using_banner
    @webdriver.find_element(technology_button_header_banner).click
    @webdriver_wait.until { @webdriver.find_element(:class => "gn-tab-content__title-link").displayed? }
    @webdriver.find_elements(:class => "gn-link-group__link").each do |element|
      if element.text.include?("Televisions")
        element.click
        break
      end
    end
  end

  private

  def technology_button_header_banner
    {:class => "gn-top-level-menu__link"}
  end

end