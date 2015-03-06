require 'test_helper'

class PhbooksControllerTest < ActionController::TestCase
  setup do
    @phbook = phbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phbook" do
    assert_difference('Phbook.count') do
      post :create, phbook: { User_id: @phbook.User_id, name: @phbook.name, note: @phbook.note, phone: @phbook.phone }
    end

    assert_redirected_to phbook_path(assigns(:phbook))
  end

  test "should show phbook" do
    get :show, id: @phbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phbook
    assert_response :success
  end

  test "should update phbook" do
    patch :update, id: @phbook, phbook: { User_id: @phbook.User_id, name: @phbook.name, note: @phbook.note, phone: @phbook.phone }
    assert_redirected_to phbook_path(assigns(:phbook))
  end

  test "should destroy phbook" do
    assert_difference('Phbook.count', -1) do
      delete :destroy, id: @phbook
    end

    assert_redirected_to phbooks_path
  end
end
