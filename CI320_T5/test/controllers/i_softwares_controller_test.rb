require 'test_helper'

class ISoftwaresControllerTest < ActionController::TestCase
  setup do
    @i_software = i_softwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:i_softwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create i_software" do
    assert_difference('ISoftware.count') do
      post :create, i_software: { i_software_name: @i_software.i_software_name, version: @i_software.version }
    end

    assert_redirected_to i_software_path(assigns(:i_software))
  end

  test "should show i_software" do
    get :show, id: @i_software
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @i_software
    assert_response :success
  end

  test "should update i_software" do
    patch :update, id: @i_software, i_software: { i_software_name: @i_software.i_software_name, version: @i_software.version }
    assert_redirected_to i_software_path(assigns(:i_software))
  end

  test "should destroy i_software" do
    assert_difference('ISoftware.count', -1) do
      delete :destroy, id: @i_software
    end

    assert_redirected_to i_softwares_path
  end
end
