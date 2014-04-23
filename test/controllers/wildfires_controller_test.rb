require 'test_helper'

class WildfiresControllerTest < ActionController::TestCase
  setup do
    @wildfire = wildfires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wildfires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wildfire" do
    assert_difference('Wildfire.count') do
      post :create, wildfire: { end_date: @wildfire.end_date, location_id: @wildfire.location_id, ongoing: @wildfire.ongoing, size: @wildfire.size, start_date: @wildfire.start_date }
    end

    assert_redirected_to wildfire_path(assigns(:wildfire))
  end

  test "should show wildfire" do
    get :show, id: @wildfire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wildfire
    assert_response :success
  end

  test "should update wildfire" do
    patch :update, id: @wildfire, wildfire: { end_date: @wildfire.end_date, location_id: @wildfire.location_id, ongoing: @wildfire.ongoing, size: @wildfire.size, start_date: @wildfire.start_date }
    assert_redirected_to wildfire_path(assigns(:wildfire))
  end

  test "should destroy wildfire" do
    assert_difference('Wildfire.count', -1) do
      delete :destroy, id: @wildfire
    end

    assert_redirected_to wildfires_path
  end
end
