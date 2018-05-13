require 'test_helper'

class CollabswstudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collabswstudent = collabswstudents(:one)
  end

  test "should get index" do
    get collabswstudents_url
    assert_response :success
  end

  test "should get new" do
    get new_collabswstudent_url
    assert_response :success
  end

  test "should create collabswstudent" do
    assert_difference('Collabswstudent.count') do
      post collabswstudents_url, params: { collabswstudent: { explanation: @collabswstudent.explanation, studename: @collabswstudent.studename, teachname: @collabswstudent.teachname } }
    end

    assert_redirected_to collabswstudent_url(Collabswstudent.last)
  end

  test "should show collabswstudent" do
    get collabswstudent_url(@collabswstudent)
    assert_response :success
  end

  test "should get edit" do
    get edit_collabswstudent_url(@collabswstudent)
    assert_response :success
  end

  test "should update collabswstudent" do
    patch collabswstudent_url(@collabswstudent), params: { collabswstudent: { explanation: @collabswstudent.explanation, studename: @collabswstudent.studename, teachname: @collabswstudent.teachname } }
    assert_redirected_to collabswstudent_url(@collabswstudent)
  end

  test "should destroy collabswstudent" do
    assert_difference('Collabswstudent.count', -1) do
      delete collabswstudent_url(@collabswstudent)
    end

    assert_redirected_to collabswstudents_url
  end
end
