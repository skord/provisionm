require 'test_helper'

class NodeCategoriesControllerTest < ActionController::TestCase
  setup do
    @node_category = node_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:node_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create node_category" do
    assert_difference('NodeCategory.count') do
      post :create, node_category: { name: @node_category.name }
    end

    assert_redirected_to node_category_path(assigns(:node_category))
  end

  test "should show node_category" do
    get :show, id: @node_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @node_category
    assert_response :success
  end

  test "should update node_category" do
    put :update, id: @node_category, node_category: { name: @node_category.name }
    assert_redirected_to node_category_path(assigns(:node_category))
  end

  test "should destroy node_category" do
    assert_difference('NodeCategory.count', -1) do
      delete :destroy, id: @node_category
    end

    assert_redirected_to node_categories_path
  end
end
