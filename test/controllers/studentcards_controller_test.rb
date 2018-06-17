require 'test_helper'

class StudentcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentcard = studentcards(:one)
  end

  test "should get index" do
    get studentcards_url
    assert_response :success
  end

  test "should get new" do
    get new_studentcard_url
    assert_response :success
  end

  test "should create studentcard" do
    assert_difference('Studentcard.count') do
      post studentcards_url, params: { studentcard: { student_id: @studentcard.student_id } }
    end

    assert_redirected_to studentcard_url(Studentcard.last)
  end

  test "should show studentcard" do
    get studentcard_url(@studentcard)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentcard_url(@studentcard)
    assert_response :success
  end

  test "should update studentcard" do
    patch studentcard_url(@studentcard), params: { studentcard: { student_id: @studentcard.student_id } }
    assert_redirected_to studentcard_url(@studentcard)
  end

  test "should destroy studentcard" do
    assert_difference('Studentcard.count', -1) do
      delete studentcard_url(@studentcard)
    end

    assert_redirected_to studentcards_url
  end
end
