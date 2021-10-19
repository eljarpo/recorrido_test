require "application_system_test_case"

class DayShiftsTest < ApplicationSystemTestCase
  setup do
    @day_shift = day_shifts(:one)
  end

  test "visiting the index" do
    visit day_shifts_url
    assert_selector "h1", text: "Day Shifts"
  end

  test "creating a Day shift" do
    visit day_shifts_url
    click_on "New Day Shift"

    fill_in "Duration", with: @day_shift.duration
    fill_in "Employee", with: @day_shift.employee_id
    fill_in "Service", with: @day_shift.service_id
    fill_in "Start time", with: @day_shift.start_time
    click_on "Create Day shift"

    assert_text "Day shift was successfully created"
    click_on "Back"
  end

  test "updating a Day shift" do
    visit day_shifts_url
    click_on "Edit", match: :first

    fill_in "Duration", with: @day_shift.duration
    fill_in "Employee", with: @day_shift.employee_id
    fill_in "Service", with: @day_shift.service_id
    fill_in "Start time", with: @day_shift.start_time
    click_on "Update Day shift"

    assert_text "Day shift was successfully updated"
    click_on "Back"
  end

  test "destroying a Day shift" do
    visit day_shifts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Day shift was successfully destroyed"
  end
end
