require 'test_helper'

class TwitttersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twittter = twittters(:one)
  end

  test "should get index" do
    get twittters_url
    assert_response :success
  end

  test "should get new" do
    get new_twittter_url
    assert_response :success
  end

  test "should create twittter" do
    assert_difference('Twittter.count') do
      post twittters_url, params: { twittter: { content: @twittter.content } }
    end

    assert_redirected_to twittter_url(Twittter.last)
  end

  test "should show twittter" do
    get twittter_url(@twittter)
    assert_response :success
  end

  test "should get edit" do
    get edit_twittter_url(@twittter)
    assert_response :success
  end

  test "should update twittter" do
    patch twittter_url(@twittter), params: { twittter: { content: @twittter.content } }
    assert_redirected_to twittter_url(@twittter)
  end

  test "should destroy twittter" do
    assert_difference('Twittter.count', -1) do
      delete twittter_url(@twittter)
    end

    assert_redirected_to twittters_url
  end
end
