require 'test_helper'

class EntryitemsControllerTest < ActionController::TestCase
  setup do
    @entryitem = entryitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entryitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entryitem" do
    assert_difference('Entryitem.count') do
      post :create, entryitem: { description: @entryitem.description }
    end

    assert_redirected_to entryitem_path(assigns(:entryitem))
  end

  test "should show entryitem" do
    get :show, id: @entryitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entryitem
    assert_response :success
  end

  test "should update entryitem" do
    patch :update, id: @entryitem, entryitem: { description: @entryitem.description }
    assert_redirected_to entryitem_path(assigns(:entryitem))
  end

  test "should destroy entryitem" do
    assert_difference('Entryitem.count', -1) do
      delete :destroy, id: @entryitem
    end

    assert_redirected_to entryitems_path
  end
end
