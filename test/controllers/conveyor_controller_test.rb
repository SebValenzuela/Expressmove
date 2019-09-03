require 'test_helper'

class ConveyorControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conveyor = conveyors(:one)
  end

  test "should get index" do
    get conveyors_url
    assert_response :success
  end

  test "should get new" do
    get new_conveyor_url
    assert_response :success
  end

  test "should create conveyor" do
    assert_difference('Conveyor.count') do
      post conveyors_url, params: { conveyor: { date: @conveyor.date, address: @conveyor.address, product: @conveyor.product } }
    end

    assert_redirected_to conveyor_url(Conveyor.last)
  end

  test "should show conveyor" do
    get conveyor_url(@conveyor)
    assert_response :success
  end

  test "should get edit" do
    get edit_conveyor_url(@conveyor)
    assert_response :success
  end

  test "should update conveyor" do
    patch conveyor_url(@conveyor), params: { conveyor: { date: @conveyor.date, address: @conveyor.address, product: @conveyor.product } }
    assert_redirected_to conveyor_url(@conveyor)
  end

  test "should destroy conveyor" do
    assert_difference('Conveyor.count', -1) do
      delete conveyor_url(@conveyor)
    end

    assert_redirected_to conveyors_url
  end
end
