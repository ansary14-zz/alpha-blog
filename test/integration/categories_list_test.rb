require 'test_helper'

class CategoriesListTest < ActionDispatch::IntegrationTest

  def setup
  	@category = Category.create(name: "Sports")
  	@category2 = Category.create(name: "Travel")
  end

  test "Should show category listing" do 
  	get '/categories'
  	assert_select "a[href=?]", category_path(@category), text: @category.name
  	assert_select "a[href=?]", category_path(@category2), text: @category2.name
  end
end
