require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Lyve"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title} | Welcome"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "#{@base_title} | Help"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "#{@base_title} | About"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "#{@base_title} | Contact"
  end

end