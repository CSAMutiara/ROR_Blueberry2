require 'test_helper'

class CollabswfacultiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collabswfaculty = collabswfaculties(:one)
  end

  test "should get index" do
    get collabswfaculties_url
    assert_response :success
  end

  test "should get new" do
    get new_collabswfaculty_url
    assert_response :success
  end

  test "should create collabswfaculty" do
    assert_difference('Collabswfaculty.count') do
      post collabswfaculties_url, params: { collabswfaculty: { explanation: @collabswfaculty.explanation, name: @collabswfaculty.name } }
    end

    assert_redirected_to collabswfaculty_url(Collabswfaculty.last)
  end

  test "should show collabswfaculty" do
    get collabswfaculty_url(@collabswfaculty)
    assert_response :success
  end

  test "should get edit" do
    get edit_collabswfaculty_url(@collabswfaculty)
    assert_response :success
  end

  test "should update collabswfaculty" do
    patch collabswfaculty_url(@collabswfaculty), params: { collabswfaculty: { explanation: @collabswfaculty.explanation, name: @collabswfaculty.name } }
    assert_redirected_to collabswfaculty_url(@collabswfaculty)
  end

  test "should destroy collabswfaculty" do
    assert_difference('Collabswfaculty.count', -1) do
      delete collabswfaculty_url(@collabswfaculty)
    end

    assert_redirected_to collabswfaculties_url
  end
end
