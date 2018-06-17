require 'test_helper'

class SwipeIdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swipe_id = swipe_ids(:one)
  end

  test "should get index" do
    get swipe_ids_url
    assert_response :success
  end

  test "should get new" do
    get new_swipe_id_url
    assert_response :success
  end

  test "should create swipe_id" do
    assert_difference('SwipeId.count') do
      post swipe_ids_url, params: { swipe_id: { student_id: @swipe_id.student_id, time: @swipe_id.time } }
    end

    assert_redirected_to swipe_id_url(SwipeId.last)
  end

  test "should show swipe_id" do
    get swipe_id_url(@swipe_id)
    assert_response :success
  end

  test "should get edit" do
    get edit_swipe_id_url(@swipe_id)
    assert_response :success
  end

  test "should update swipe_id" do
    patch swipe_id_url(@swipe_id), params: { swipe_id: { student_id: @swipe_id.student_id, time: @swipe_id.time } }
    assert_redirected_to swipe_id_url(@swipe_id)
  end

  test "should destroy swipe_id" do
    assert_difference('SwipeId.count', -1) do
      delete swipe_id_url(@swipe_id)
    end

    assert_redirected_to swipe_ids_url
  end
end
