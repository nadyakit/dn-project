require "test_helper"

class EggArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get egg_article_index_url
    assert_response :success
  end
end
