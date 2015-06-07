class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to @group
    else
      render 'new'
    end
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find( params[:id])
  end

  def show
  end

  def update
  end

  def destroy
  end

    private
      def group_params
        params.require(:group).permit(:name, :description)
      end

end
