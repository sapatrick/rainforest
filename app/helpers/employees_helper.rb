module EmployeesHelper
  def last_name_first(employee)
  	"#{employee.last_name}, #{employee.first_name}"
  end

  def first_name_first(employee)
  	"#{employee.first_name}, #{employee.last_name}"
  end
end
