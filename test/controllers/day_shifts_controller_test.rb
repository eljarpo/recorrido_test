require "test_helper"

class DayShiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @day_shift = day_shifts(:one)
  end

  test "should get index" do
    get day_shifts_url
    assert_response :success
  end

  test "should get new" do
    get new_day_shift_url
    assert_response :success
  end

  test "should create day_shift" do
    assert_difference('DayShift.count') do
      post day_shifts_url, params: { day_shift: { duration: @day_shift.duration, employee_id: @day_shift.employee_id, service_id: @day_shift.service_id, start_time: @day_shift.start_time } }
    end

    assert_redirected_to day_shift_url(DayShift.last)
  end

  test "should show day_shift" do
    get day_shift_url(@day_shift)
    assert_response :success
  end

  test "should get edit" do
    get edit_day_shift_url(@day_shift)
    assert_response :success
  end

  test "should update day_shift" do
    patch day_shift_url(@day_shift), params: { day_shift: { duration: @day_shift.duration, employee_id: @day_shift.employee_id, service_id: @day_shift.service_id, start_time: @day_shift.start_time } }
    assert_redirected_to day_shift_url(@day_shift)
  end

  test "should destroy day_shift" do
    assert_difference('DayShift.count', -1) do
      delete day_shift_url(@day_shift)
    end

    assert_redirected_to day_shifts_url
  end
end
