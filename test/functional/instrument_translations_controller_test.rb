require 'test_helper'

class InstrumentTranslationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instrument_translations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrument_translation" do
    assert_difference('InstrumentTranslation.count') do
      post :create, :instrument_translation => { }
    end

    assert_redirected_to instrument_translation_path(assigns(:instrument_translation))
  end

  test "should show instrument_translation" do
    get :show, :id => instrument_translations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => instrument_translations(:one).to_param
    assert_response :success
  end

  test "should update instrument_translation" do
    put :update, :id => instrument_translations(:one).to_param, :instrument_translation => { }
    assert_redirected_to instrument_translation_path(assigns(:instrument_translation))
  end

  test "should destroy instrument_translation" do
    assert_difference('InstrumentTranslation.count', -1) do
      delete :destroy, :id => instrument_translations(:one).to_param
    end

    assert_redirected_to instrument_translations_path
  end
end
