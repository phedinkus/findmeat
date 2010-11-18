require 'test_helper'

class MeatsControllerTest < ActionController::TestCase
  setup do
    @meat = meats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meat" do
    assert_difference('Meat.count') do
      post :create, :meat => @meat.attributes
    end

    assert_redirected_to meat_path(assigns(:meat))
  end

  test "should show meat" do
    get :show, :id => @meat.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @meat.to_param
    assert_response :success
  end

  test "should update meat" do
    put :update, :id => @meat.to_param, :meat => @meat.attributes
    assert_redirected_to meat_path(assigns(:meat))
  end

  test "should destroy meat" do
    assert_difference('Meat.count', -1) do
      delete :destroy, :id => @meat.to_param
    end

    assert_redirected_to meats_path
  end
end
