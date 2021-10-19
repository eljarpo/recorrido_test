require "test_helper"

class ServiceShiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_duty = service_duties(:one)
  end

  test "should get index" do
    get service_duties_url
    assert_response :success
  end

  test "should get new" do
    get new_service_duty_url
    assert_response :success
  end

  test "should create service_duty" do
    assert_difference('ServiceShift.count') do
      post service_duties_url, params: { service_duty: { day_of_week: @service_duty.day_of_week, duration: @service_duty.duration, service_id: @service_duty.service_id, start_time: @service_duty.start_time } }
    end

    assert_redirected_to service_duty_url(ServiceShift.last)
  end

  test "should show service_duty" do
    get service_duty_url(@service_duty)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_duty_url(@service_duty)
    assert_response :success
  end

  test "should update service_duty" do
    patch service_duty_url(@service_duty), params: { service_duty: { day_of_week: @service_duty.day_of_week, duration: @service_duty.duration, service_id: @service_duty.service_id, start_time: @service_duty.start_time } }
    assert_redirected_to service_duty_url(@service_duty)
  end

  test "should destroy service_duty" do
    assert_difference('ServiceShift.count', -1) do
      delete service_duty_url(@service_duty)
    end

    assert_redirected_to service_duties_url
  end
end
