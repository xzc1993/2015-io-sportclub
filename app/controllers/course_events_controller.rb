class CourseEventsController < ApplicationController
  before_action :set_course
  before_action :set_course_event, only: [:show, :edit, :update, :destroy]

  # GET /course_events
  # GET /course_events.json
  def index
    #@course_events = CourseEvent.all
    @course_events = Course.find(params[:course_id]).course_events
  end

  # GET /course_events/1
  # GET /course_events/1.json
  def show
  end

  # GET /course_events/new
  def new
    @course_event = CourseEvent.new
  end

  # GET /course_events/1/edit
  def edit
  end

  # POST /course_events
  # POST /course_events.json
  def create
    @course_event = CourseEvent.new(course_event_params)

    respond_to do |format|
      if @course_event.save
        format.html { redirect_to @course, notice: 'Course event was successfully created.' }
        format.json { render :show, status: :created, location: @course_event }
      else
        format.html { render :new }
        format.json { render json: @course_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_events/1
  # PATCH/PUT /course_events/1.json
  def update
    respond_to do |format|
      if @course_event.update(course_event_params)
        format.html { redirect_to @course, notice: 'Course event was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_event }
      else
        format.html { render :edit }
        format.json { render json: @course_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_events/1
  # DELETE /course_events/1.json
  def destroy
    @course_event.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_event
      @course_event = CourseEvent.find(params[:id])
    end

    def set_course
      @course = Course.find(params[:course_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_event_params
      x = params.require(:course_event).permit(:title)
      x[:course_id] = @course.id
      x
    end
end
