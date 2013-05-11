require 'test_helper'

class TripDestinationsControllerTest < ActionController::TestCase
  setup do
    @trip_destination = trip_destinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_destinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_destination" do
    assert_difference('TripDestination.count') do
      post :create, trip_destination: { destination_id: @trip_destination.destination_id, trip_id: @trip_destination.trip_id }
    end

    assert_redirected_to trip_destination_path(assigns(:trip_destination))
  end

  test "should show trip_destination" do
    get :show, id: @trip_destination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_destination
    assert_response :success
  end

  test "should update trip_destination" do
    put :update, id: @trip_destination, trip_destination: { destination_id: @trip_destination.destination_id, trip_id: @trip_destination.trip_id }
    assert_redirected_to trip_destination_path(assigns(:trip_destination))
  end

  test "should destroy trip_destination" do
    assert_difference('TripDestination.count', -1) do
      delete :destroy, id: @trip_destination
    end

    assert_redirected_to trip_destinations_path
  end
end
