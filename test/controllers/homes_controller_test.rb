require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  setup do
    @home = homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home" do
    assert_difference('Home.count') do
      post :create, home: { amount: @home.amount, item: @home.item, name: @home.name }
    end

    assert_redirected_to home_path(assigns(:home))
  end

  test "should show home" do
    get :show, id: @home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home
    assert_response :success
  end

  test "should update home" do
    patch :update, id: @home, home: { amount: @home.amount, item: @home.item, name: @home.name }
    assert_redirected_to home_path(assigns(:home))
  end

  test "should destroy home" do
    assert_difference('Home.count', -1) do
      delete :destroy, id: @home
    end

    assert_redirected_to homes_path
  end
end
