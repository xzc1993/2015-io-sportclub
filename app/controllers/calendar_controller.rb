class CalendarController < ApplicationController
  def index
    @events = Events.all
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
end
