class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :length => {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :must_sell_apparel, on: :create

  def must_sell_apparel
    if !mens_apparel && !womens_apparel
      errors.add(mens_apparel, "store must sell either mens or womens apparel or both")
    end
  end


end
