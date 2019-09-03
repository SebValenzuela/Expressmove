require 'test_helper'

class CoordinatorControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordinator = coordibnators(:one)
  end

  test "should get index" do
    get coordinators_url
    assert_response :success
  end

  test "should get new" do
    get new_coordinator_url
    assert_response :success
  end

  test "should create coordinator" do
    assert_difference('Coordinator.count') do
      post coordinators_url, params: { coordinator: { category: @coordinator.category, local_id: @coordinator.local_id, mark: @coordinator.mark, name: @coordinator.name telephone: @coordinator.telephone, control: @coordinator.control, date: @coordinator.date } }
    end

    assert_redirected_to coordinator_url(Coordinator.last)
  end

  test "should show coordinator" do
    get coordinator_url(@coordinator)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordinator_url(@coordinator)
    assert_response :success
  end

  test "should update coordinator" do
    patch coordinator_url(@coordinator), params: { coordinator: { name: @coordinator.category, rut: @coordinator.local_id, address: @coordinator.mark, email: @coordinator.name, telephone: @coordinator.telephone, control: @coordinator.control, date: @coordinator.date } }
    assert_redirected_to coordinator_url(@coordinator)
  end

  test "should destroy coordinator" do
    assert_difference('Coordinator.count', -1) do
      delete coordinator_url(@coordinator)
    end

    assert_redirected_to coordinators_url
  end
end
