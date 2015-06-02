require 'test_helper'

class ISoftwareInstsControllerTest < ActionController::TestCase
  setup do
    @i_software_inst = i_software_insts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:i_software_insts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create i_software_inst" do
    assert_difference('ISoftwareInst.count') do
      post :create, i_software_inst: { i_software_inst_name: @i_software_inst.i_software_inst_name }
    end

    assert_redirected_to i_software_inst_path(assigns(:i_software_inst))
  end

  test "should show i_software_inst" do
    get :show, id: @i_software_inst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @i_software_inst
    assert_response :success
  end

  test "should update i_software_inst" do
    patch :update, id: @i_software_inst, i_software_inst: { i_software_inst_name: @i_software_inst.i_software_inst_name }
    assert_redirected_to i_software_inst_path(assigns(:i_software_inst))
  end

  test "should destroy i_software_inst" do
    assert_difference('ISoftwareInst.count', -1) do
      delete :destroy, id: @i_software_inst
    end

    assert_redirected_to i_software_insts_path
  end
end
