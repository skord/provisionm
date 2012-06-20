require 'test_helper'

class PhysicalRacksControllerTest < ActionController::TestCase
  setup do
    @physical_rack = physical_racks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physical_racks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physical_rack" do
    assert_difference('PhysicalRack.count') do
      post :create, physical_rack: {  }
    end

    assert_redirected_to physical_rack_path(assigns(:physical_rack))
  end

  test "should show physical_rack" do
    get :show, id: @physical_rack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physical_rack
    assert_response :success
  end

  test "should update physical_rack" do
    put :update, id: @physical_rack, physical_rack: {  }
    assert_redirected_to physical_rack_path(assigns(:physical_rack))
  end

  test "should destroy physical_rack" do
    assert_difference('PhysicalRack.count', -1) do
      delete :destroy, id: @physical_rack
    end

    assert_redirected_to physical_racks_path
  end
end
