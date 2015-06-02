require 'test_helper'

class FSoftwaresControllerTest < ActionController::TestCase
  setup do
    @f_software = f_softwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_softwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_software" do
    assert_difference('FSoftware.count') do
      post :create, f_software: { cpu: @f_software.cpu, f_software_name: @f_software.f_software_name, memory: @f_software.memory, storage: @f_software.storage, version: @f_software.version }
    end

    assert_redirected_to f_software_path(assigns(:f_software))
  end

  test "should show f_software" do
    get :show, id: @f_software
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_software
    assert_response :success
  end

  test "should update f_software" do
    patch :update, id: @f_software, f_software: { cpu: @f_software.cpu, f_software_name: @f_software.f_software_name, memory: @f_software.memory, storage: @f_software.storage, version: @f_software.version }
    assert_redirected_to f_software_path(assigns(:f_software))
  end

  test "should destroy f_software" do
    assert_difference('FSoftware.count', -1) do
      delete :destroy, id: @f_software
    end

    assert_redirected_to f_softwares_path
  end
end
