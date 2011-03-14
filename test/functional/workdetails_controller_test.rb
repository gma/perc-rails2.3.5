require 'test_helper'

class WorkdetailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workdetail" do
    assert_difference('Workdetail.count') do
      post :create, :workdetail => { }
    end

    assert_redirected_to workdetail_path(assigns(:workdetail))
  end

  test "should show workdetail" do
    get :show, :id => workdetails(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => workdetails(:one).to_param
    assert_response :success
  end

  test "should update workdetail" do
    put :update, :id => workdetails(:one).to_param, :workdetail => { }
    assert_redirected_to workdetail_path(assigns(:workdetail))
  end

  test "should destroy workdetail" do
    assert_difference('Workdetail.count', -1) do
      delete :destroy, :id => workdetails(:one).to_param
    end

    assert_redirected_to workdetails_path
  end
end
