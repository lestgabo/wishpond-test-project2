require 'test_helper'

class PageTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_two = page_twos(:one)
  end

  test "should get index" do
    get page_twos_url
    assert_response :success
  end

  test "should get new" do
    get new_page_two_url
    assert_response :success
  end

  test "should create page_two" do
    assert_difference('PageTwo.count') do
      post page_twos_url, params: { page_two: {  } }
    end

    assert_redirected_to page_two_url(PageTwo.last)
  end

  test "should show page_two" do
    get page_two_url(@page_two)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_two_url(@page_two)
    assert_response :success
  end

  test "should update page_two" do
    patch page_two_url(@page_two), params: { page_two: {  } }
    assert_redirected_to page_two_url(@page_two)
  end

  test "should destroy page_two" do
    assert_difference('PageTwo.count', -1) do
      delete page_two_url(@page_two)
    end

    assert_redirected_to page_twos_url
  end
end
