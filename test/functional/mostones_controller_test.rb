require 'test_helper'

class MostonesControllerTest < ActionController::TestCase
  setup do
    @mostone = mostones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mostones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mostone" do
    assert_difference('Mostone.count') do
      post :create, mostone: { phone: @mostone.phone }
    end

    assert_redirected_to mostone_path(assigns(:mostone))
  end

  test "should show mostone" do
    get :show, id: @mostone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mostone
    assert_response :success
  end

  test "should update mostone" do
    put :update, id: @mostone, mostone: { phone: @mostone.phone }
    assert_redirected_to mostone_path(assigns(:mostone))
  end

  test "should destroy mostone" do
    assert_difference('Mostone.count', -1) do
      delete :destroy, id: @mostone
    end

    assert_redirected_to mostones_path
  end
end
