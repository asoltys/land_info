class Surveyor < ActiveRecord::Base
  has_many :drawings

  def name
    "#{first_name} #{last_name}"
  end

end
