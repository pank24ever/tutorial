require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  #毎回使うものは、一度メソッドでまとめておき再度呼び出そう！
  def setup
    @base_title = 
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    #<title>タグ内に「Home | Ruby on Rails Tutorial Sample App」という文字列があるかどうかをチェック
    assert_select "title" , "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title" , "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title" , "Home | Ruby on Rails Tutorial Sample App"
  end

end
