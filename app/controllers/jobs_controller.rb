class JobsController < ApplicationController
  def index
  	@jobs = Job.all
  end

  def show
  	@job = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    if @job.update(job_params)
      redirect_to @job, notice: "Job successfully updated!"
    else
      render :edit
    end

  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job, notice: "Job successfully created!"
    else
      render :new
    end
  end

  def destroy
    @job = job.find(params[:id])
    @job.destroy
    redirect_to jobs_url
  end

private

  def job_params
	job_params = params.require(:job).permit(:job_id, :job_name, :date_added, :job_due_date, :job_description, :job_designation, :job_complete, :job_salesperson)
  end

end
