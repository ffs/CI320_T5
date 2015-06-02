require 'test_helper'

class FSoftwareInstsControllerTest < ActionController::TestCase
  setup do
    @f_software_inst = f_software_insts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_software_insts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_software_inst" do
    assert_difference('FSoftwareInst.count') do
      post :create, f_software_inst: { f_software_inst_name: @f_software_inst.f_software_inst_name }
    end

    assert_redirected_to f_software_inst_path(assigns(:f_software_inst))
  end

  test "should show f_software_inst" do
    get :show, id: @f_software_inst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_software_inst
    assert_response :success
  end

  test "should update f_software_inst" do
    patch :update, id: @f_software_inst, f_software_inst: { f_software_inst_name: @f_software_inst.f_software_inst_name }
    assert_redirected_to f_software_inst_path(assigns(:f_software_inst))
  end

  test "should destroy f_software_inst" do
    assert_difference('FSoftwareInst.count', -1) do
      delete :destroy, id: @f_software_inst
    end

    assert_redirected_to f_software_insts_path
  end
end
