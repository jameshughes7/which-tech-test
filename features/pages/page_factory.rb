class PageFactory

  attr_accessor :home_page, :television_reviews, :television_review

  def initialize(webdriver, webdriver_wait)
    Dir[File.dirname(__FILE__) + '/*.rb'].each {|file| require file } #require all files
    @home_page = HomePage.new(webdriver, webdriver_wait)
    @television_reviews = TelevisionReviews.new(webdriver, webdriver_wait)
    @television_review = TelevisionReview.new(webdriver, webdriver_wait)
  end
end