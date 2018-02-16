require_relative './page_base.rb'
class TelevisionReview < PageBase

  def await
    @webdriver_wait.until { @webdriver.find_element(television_review_keyword) }
  end

  def get_title
    @webdriver.find_element(television_review_keyword).text
  end

  private

  def television_review_keyword
    {:class => '_14jn_'}
  end

end