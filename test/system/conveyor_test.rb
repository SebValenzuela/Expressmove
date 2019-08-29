require "application_system_test_case"

class ConveyorsTest < ApplicationSystemTestCase
  setup do
    @conveyor = conveyors(:one)
  end

  test "visiting the index" do
    visit conveyors_url
    assert_selector "h1", text: "Conveyors"
  end

  test "creating a Conveyor" do
    visit conveyors_url
    click_on "New Conveyor"

    fill_in "Producto", with: @conveyor.producto
    fill_in "Fecha", with: @conveyor.fecha
    fill_in "Direccion", with: @conveyor.direccion
    click_on "Create Conveyor"

    assert_text "Conveyor was successfully created"
    click_on "Back"
  end

  test "updating a Conveyor" do
    visit conveyors_url
    click_on "Edit", match: :first

    fill_in "Producto", with: @conveyor.producto 
    fill_in "Fecha", with: @conveyor.fecha
    fill_in "Direccion", with: @conveyor.direccion
    click_on "Update Conveyor"

    assert_text "Conveyor was successfully updated"
    click_on "Back"
  end

  test "destroying a Conveyor" do
    visit conveyors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conveyor was successfully destroyed"
  end
end
