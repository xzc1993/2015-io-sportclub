class CalendarController < ApplicationController
  def index
    @events = Event.all
    @items = Item.all
    @courseDays = CourseDay.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  	    @events = Event.all
        @items = Item.all
    @courses = Course.all

  end

  # GET /items/new
  def new
    @item = Item.new
  end


  def signed?(course_day)

    begin
      UserCourseDay.find_by(user: current_user, course_day: course_day)
    rescue Mongoid::Errors::DocumentNotFound
      return false
    end


    return true
  end

  helper_method :signed?

end

