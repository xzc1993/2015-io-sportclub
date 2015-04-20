require 'test_helper'

class CourseDaysControllerTest < ActionController::TestCase
  setup do
    @course_day = course_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_day" do
    assert_difference('CourseDay.count') do
      post :create, course_day: { course: @course_day.course, date: @course_day.date, time_begin: @course_day.time_begin, time_end: @course_day.time_end }
    end

    assert_redirected_to course_day_path(assigns(:course_day))
  end

  test "should show course_day" do
    get :show, id: @course_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_day
    assert_response :success
  end

  test "should update course_day" do
    patch :update, id: @course_day, course_day: { course: @course_day.course, date: @course_day.date, time_begin: @course_day.time_begin, time_end: @course_day.time_end }
    assert_redirected_to course_day_path(assigns(:course_day))
  end

  test "should destroy course_day" do
    assert_difference('CourseDay.count', -1) do
      delete :destroy, id: @course_day
    end

    assert_redirected_to course_days_path
  end
end
