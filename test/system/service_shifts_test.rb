require "application_system_test_case"

class ServiceShiftsTest < ApplicationSystemTestCase
  setup do
    @service_duty = service_duties(:one)
  end

  test "visiting the index" do
    visit service_duties_url
    assert_selector "h1", text: "Service Shifts"
  end

  test "creating a Service shift" do
    visit service_duties_url
    click_on "New Service Shift"

    fill_in "Day of week", with: @service_duty.day_of_week
    fill_in "Duration", with: @service_duty.duration
    fill_in "Service", with: @service_duty.service_id
    fill_in "Start time", with: @service_duty.start_time
    click_on "Create Service shift"

    assert_text "Service shift was successfully created"
    click_on "Back"
  end

  test "updating a Service shift" do
    visit service_duties_url
    click_on "Edit", match: :first

    fill_in "Day of week", with: @service_duty.day_of_week
    fill_in "Duration", with: @service_duty.duration
    fill_in "Service", with: @service_duty.service_id
    fill_in "Start time", with: @service_duty.start_time
    click_on "Update Service shift"

    assert_text "Service shift was successfully updated"
    click_on "Back"
  end

  test "destroying a Service shift" do
    visit service_duties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service shift was successfully destroyed"
  end
end
