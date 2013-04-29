require 'test_helper'

class HyesControllerTest < ActionController::TestCase
  setup do
    @hye = hyes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hyes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hye" do
    assert_difference('Hye.count') do
      post :create, hye: { name: @hye.name }
    end

    assert_redirected_to hye_path(assigns(:hye))
  end

  test "should show hye" do
    get :show, id: @hye
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hye
    assert_response :success
  end

  test "should update hye" do
    put :update, id: @hye, hye: { name: @hye.name }
    assert_redirected_to hye_path(assigns(:hye))
  end

  test "should destroy hye" do
    assert_difference('Hye.count', -1) do
      delete :destroy, id: @hye
    end

    assert_redirected_to hyes_path
  end
end
