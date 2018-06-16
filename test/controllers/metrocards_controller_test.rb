require 'test_helper'

class MetrocardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metrocard = metrocards(:one)
  end

  test "should get index" do
    get metrocards_url
    assert_response :success
  end

  test "should get new" do
    get new_metrocard_url
    assert_response :success
  end

  test "should create metrocard" do
    assert_difference('Metrocard.count') do
      post metrocards_url, params: { metrocard: { student_id: @metrocard.student_id } }
    end

    assert_redirected_to metrocard_url(Metrocard.last)
  end

  test "should show metrocard" do
    get metrocard_url(@metrocard)
    assert_response :success
  end

  test "should get edit" do
    get edit_metrocard_url(@metrocard)
    assert_response :success
  end

  test "should update metrocard" do
    patch metrocard_url(@metrocard), params: { metrocard: { student_id: @metrocard.student_id } }
    assert_redirected_to metrocard_url(@metrocard)
  end

  test "should destroy metrocard" do
    assert_difference('Metrocard.count', -1) do
      delete metrocard_url(@metrocard)
    end

    assert_redirected_to metrocards_url
  end
end
