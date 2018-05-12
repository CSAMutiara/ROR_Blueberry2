require 'test_helper'

class ReferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reference = references(:one)
  end

  test "should get index" do
    get references_url
    assert_response :success
  end

  test "should get new" do
    get new_reference_url
    assert_response :success
  end

  test "should create reference" do
    assert_difference('Reference.count') do
      post references_url, params: { reference: { aebcreferences: @reference.aebcreferences, ahareferences: @reference.ahareferences, books: @reference.books, cifwreferences: @reference.cifwreferences, efvreferences: @reference.efvreferences, facollabs: @reference.facollabs, grants: @reference.grants, pcmreferences: @reference.pcmreferences, stcollabs: @reference.stcollabs, wcpitreferences: @reference.wcpitreferences } }
    end

    assert_redirected_to reference_url(Reference.last)
  end

  test "should show reference" do
    get reference_url(@reference)
    assert_response :success
  end

  test "should get edit" do
    get edit_reference_url(@reference)
    assert_response :success
  end

  test "should update reference" do
    patch reference_url(@reference), params: { reference: { aebcreferences: @reference.aebcreferences, ahareferences: @reference.ahareferences, books: @reference.books, cifwreferences: @reference.cifwreferences, efvreferences: @reference.efvreferences, facollabs: @reference.facollabs, grants: @reference.grants, pcmreferences: @reference.pcmreferences, stcollabs: @reference.stcollabs, wcpitreferences: @reference.wcpitreferences } }
    assert_redirected_to reference_url(@reference)
  end

  test "should destroy reference" do
    assert_difference('Reference.count', -1) do
      delete reference_url(@reference)
    end

    assert_redirected_to references_url
  end
end
