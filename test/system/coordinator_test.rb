require "application_system_test_case"

class CoordinatorsTest < ApplicationSystemTestCase
  setup do
    @coordinator = coordinators(:one)
  end

  test "visiting the index" do
    visit coordinators_url
    assert_selector "h1", text: "Coordinators"
  end

  test "creating a Coordinator" do
    visit coordinators_url
    click_on "New Coordinator"

    fill_in "Nombre", with: @coordinator.nombre
    fill_in "Rut", with: @coordinator.rut
    fill_in "Direccion", with: @coordinator.direccion
    fill_in "Email", with: @coordinator.email
    fill_in "Telefono", with: @coordinator.telefono
    fill_in "Control", with: @coordinator.control
    fill_in "Fecha", with: @coordinator.fecha
    click_on "Create Coordinator"

    assert_text "Coordinator was successfully created"
    click_on "Back"
  end

  test "updating a Coordinator" do
    visit coordinators_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @coordinator.nombre
    fill_in "Rut", with: @coordinator.rut
    fill_in "Direccion", with: @coordinator.direccion
    fill_in "Email", with: @coordinator.email
    fill_in "Telefono", with: @coordinator.telefono
    fill_in "Control", with: @coordinator.control
    fill_in "Fecha", with: @coordinator.fecha
    click_on "Update Coordinator"

    assert_text "Coordinator was successfully updated"
    click_on "Back"
  end

  test "destroying a Coordinator" do
    visit coordinators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coordinator was successfully destroyed"
  end
end
