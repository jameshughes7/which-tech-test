require_relative 'page_base'

class TelevisionReviews < PageBase

  def await
    @webdriver_wait.until{ @webdriver.find_element()}
  end

  private

  def television_keyword
    {:class => '_2FI44'}
  end

end