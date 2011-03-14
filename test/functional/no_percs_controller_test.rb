require 'test_helper'

class NoPercsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:no_percs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create no_perc" do
    assert_difference('NoPerc.count') do
      post :create, :no_perc => { }
    end

    assert_redirected_to no_perc_path(assigns(:no_perc))
  end

  test "should show no_perc" do
    get :show, :id => no_percs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => no_percs(:one).to_param
    assert_response :success
  end

  test "should update no_perc" do
    put :update, :id => no_percs(:one).to_param, :no_perc => { }
    assert_redirected_to no_perc_path(assigns(:no_perc))
  end

  test "should destroy no_perc" do
    assert_difference('NoPerc.count', -1) do
      delete :destroy, :id => no_percs(:one).to_param
    end

    assert_redirected_to no_percs_path
  end
end
