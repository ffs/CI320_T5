require 'test_helper'

class DbInstsControllerTest < ActionController::TestCase
  setup do
    @db_inst = db_insts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:db_insts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create db_inst" do
    assert_difference('DbInst.count') do
      post :create, db_inst: { db_inst_name: @db_inst.db_inst_name }
    end

    assert_redirected_to db_inst_path(assigns(:db_inst))
  end

  test "should show db_inst" do
    get :show, id: @db_inst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @db_inst
    assert_response :success
  end

  test "should update db_inst" do
    patch :update, id: @db_inst, db_inst: { db_inst_name: @db_inst.db_inst_name }
    assert_redirected_to db_inst_path(assigns(:db_inst))
  end

  test "should destroy db_inst" do
    assert_difference('DbInst.count', -1) do
      delete :destroy, id: @db_inst
    end

    assert_redirected_to db_insts_path
  end
end
