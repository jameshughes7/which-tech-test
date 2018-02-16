Given(/^I am viewing Which Television reviews$/) do
  @pages.home_page.navigate_directly_to_television_reviews
  @pages.television_reviews.await
end

When(/^I search for televisions using the banner$/) do
  @pages.home_page.navigate_to_television_reviews_using_banner
end


Then(/^I should see Which Television reviews$/) do
  @pages.television_reviews.await
end


When (/^I view a result$/) do
  @pages.television_reviews.choose_first_television
  @pages.television_review.await
end

Then(/^I should see details of the Television$/) do
  raise("Title is empty") if @pages.television_review.get_title.length == 0
end

