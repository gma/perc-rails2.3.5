require 'test_helper'

class WorkRequestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_request" do
    assert_difference('WorkRequest.count') do
      post :create, :work_request => { }
    end

    assert_redirected_to work_request_path(assigns(:work_request))
  end

  test "should show work_request" do
    get :show, :id => work_requests(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => work_requests(:one).to_param
    assert_response :success
  end

  test "should update work_request" do
    put :update, :id => work_requests(:one).to_param, :work_request => { }
    assert_redirected_to work_request_path(assigns(:work_request))
  end

  test "should destroy work_request" do
    assert_difference('WorkRequest.count', -1) do
      delete :destroy, :id => work_requests(:one).to_param
    end

    assert_redirected_to work_requests_path
  end
end
