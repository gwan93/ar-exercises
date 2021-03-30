class Employee < ActiveRecord::Base
  belongs_to :store
  validates_associated :store
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 39, less_than: 201}


  before_create :ensure_password_has_a_value

  private
    def ensure_password_has_a_value
      if password.nil?
        self.password = "asecretpassword"
      end
    end





end
