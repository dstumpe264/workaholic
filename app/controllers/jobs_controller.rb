class JobsController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:user_id])
    @job = @user.jobs.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def edit
    @user = User.find(params[:user_id])
    @job = @user.jobs.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @job = @user.jobs.create(job_params)
    redirect_to user_path(@user)

    # if @job.save
    #   redirect_to @job
    # else
    #   render 'new'
    # end
  end

  def update
    @job = Job.find(params[:id])
  end

  def destroy
    @user = User.find(params[:user_id])
    @job = @user.jobs.find(params[:id])
    @job.destroy
    redirect_to user_path(@user)
  end

private
  def job_params
    params.require(:job).permit(:title)
  end
end
