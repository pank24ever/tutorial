require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    #<title>タグ内に「Home | Ruby on Rails Tutorial Sample App」という文字列があるかどうかをチェック
    #毎回共通のテストを書いてしまっているので、まとめる
    #assert_select "title" , "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

end