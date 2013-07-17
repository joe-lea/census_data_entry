require 'test_helper'

class RelationshipStatusesControllerTest < ActionController::TestCase
  setup do
    @relationship_status = relationship_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relationship_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relationship_status" do
    assert_difference('RelationshipStatus.count') do
      post :create, relationship_status: { description: @relationship_status.description }
    end

    assert_redirected_to relationship_status_path(assigns(:relationship_status))
  end

  test "should show relationship_status" do
    get :show, id: @relationship_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relationship_status
    assert_response :success
  end

  test "should update relationship_status" do
    patch :update, id: @relationship_status, relationship_status: { description: @relationship_status.description }
    assert_redirected_to relationship_status_path(assigns(:relationship_status))
  end

  test "should destroy relationship_status" do
    assert_difference('RelationshipStatus.count', -1) do
      delete :destroy, id: @relationship_status
    end

    assert_redirected_to relationship_statuses_path
  end
end
