class EmployeesController < ApplicationController
  def index
  	@employees = Employee.all
  end

  def show
  	@employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    if @employee.update(employee_params)
      redirect_to @employee, notice: "Employee successfully updated!"
    else
      render :edit
    end

  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee, notice: "Employee successfully created!"
    else
      render :new
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_url
  end


private

  def employee_params
	employee_params = params.require(:employee).permit(:employee_id, :first_name, :last_name, :department_name, :department_id)
  end

end
