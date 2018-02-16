require_relative './page_base'

class TelevisionReviews < PageBase

  def await
    @webdriver_wait.until{ @webdriver.find_element(television_keyword)}
  end

  def choose_first_television
    @webdriver_wait.until { @webdriver.find_element(television_results).displayed? }
    @webdriver.find_elements(television_results).first.click
  end

  private

  def television_keyword
    {:class => '_2FI44'}  #need to find better element locator
  end

  def television_results
    {:class => '_2xPiO'}
  end

end