class Surveyor < ActiveRecord::Base
  def to_label
    "#{first_name} #{last_name}" 
  end
end
