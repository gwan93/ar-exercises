class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :length => {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_sell_apparel
  
  before_destroy :ensure_store_has_no_employees

  def must_sell_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "store must sell either mens or womens apparel or both")
    end
  end

  def ensure_store_has_no_employees
    if employees.any?
      errors.add(:employees, "store must not have any employees")
      return false
    end
  end
end
