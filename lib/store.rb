class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :must_carry_at_least_one_apparel

  private

  def must_carry_at_least_one_apparel
    if mens_apparel.blank? && womens_apparel.blank?
      errors.add(:base, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end
