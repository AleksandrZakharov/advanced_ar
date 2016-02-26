class SalaryRange < ActiveRecord::Base
  belongs_to :job

  validate :min_is_less_then_max

  def min_is_less_then_max
  	if min_salary > max_salary
  		errors.add(:min_salary, "cannot be greater than maximum salary!")
  	end
  end
end
