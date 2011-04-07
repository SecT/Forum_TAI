require 'test_helper'

class FthreadsControllerTest < ActionController::TestCase
  setup do
    @fthread = fthreads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fthreads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fthread" do
    assert_difference('Fthread.count') do
      post :create, :fthread => @fthread.attributes
    end

    assert_redirected_to fthread_path(assigns(:fthread))
  end

  test "should show fthread" do
    get :show, :id => @fthread.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fthread.to_param
    assert_response :success
  end

  test "should update fthread" do
    put :update, :id => @fthread.to_param, :fthread => @fthread.attributes
    assert_redirected_to fthread_path(assigns(:fthread))
  end

  test "should destroy fthread" do
    assert_difference('Fthread.count', -1) do
      delete :destroy, :id => @fthread.to_param
    end

    assert_redirected_to fthreads_path
  end
end
