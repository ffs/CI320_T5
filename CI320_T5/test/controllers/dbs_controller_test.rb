require 'test_helper'

class DbsControllerTest < ActionController::TestCase
  setup do
    @db = dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create db" do
    assert_difference('Db.count') do
      post :create, db: { clonedate: @db.clonedate, cpu: @db.cpu, db_name: @db.db_name, growthRate: @db.growthRate, memory: @db.memory, storage: @db.storage, version: @db.version }
    end

    assert_redirected_to db_path(assigns(:db))
  end

  test "should show db" do
    get :show, id: @db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @db
    assert_response :success
  end

  test "should update db" do
    patch :update, id: @db, db: { clonedate: @db.clonedate, cpu: @db.cpu, db_name: @db.db_name, growthRate: @db.growthRate, memory: @db.memory, storage: @db.storage, version: @db.version }
    assert_redirected_to db_path(assigns(:db))
  end

  test "should destroy db" do
    assert_difference('Db.count', -1) do
      delete :destroy, id: @db
    end

    assert_redirected_to dbs_path
  end
end
