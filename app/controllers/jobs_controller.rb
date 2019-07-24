class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def edit

  end

  def create
    @user = User.find(params(:user_id))
    @job = @user.job.create(job_params)
    redirect_to user_path(@user)
    
    if @job.save
      redirect_to @job
    else
      render 'new'
    end
  end

  def update
    @job = Job.find(params[:id])
  end

  def destroy
  end

private
  def job_params
    params.require(:job).permit(:title)
  end
end
