class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
end

#the student model has a first_name and a last_name - but if we want both combined we need to use syntax for it because in the migration first name and last name is separate