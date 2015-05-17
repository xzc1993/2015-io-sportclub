require 'test_helper'

class CourseEventsControllerTest < ActionController::TestCase
  setup do
    @course_event = course_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_event" do
    assert_difference('CourseEvent.count') do
      post :create, course_event: { title: @course_event.title }
    end

    assert_redirected_to course_event_path(assigns(:course_event))
  end

  test "should show course_event" do
    get :show, id: @course_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_event
    assert_response :success
  end

  test "should update course_event" do
    patch :update, id: @course_event, course_event: { title: @course_event.title }
    assert_redirected_to course_event_path(assigns(:course_event))
  end

  test "should destroy course_event" do
    assert_difference('CourseEvent.count', -1) do
      delete :destroy, id: @course_event
    end

    assert_redirected_to course_events_path
  end
end
