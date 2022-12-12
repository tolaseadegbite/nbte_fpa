# == Schema Information
#
# Table name: laboratories
#
#  id            :bigint           not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :integer
#
class Laboratory < ApplicationRecord
  belongs_to :department
  validates :name, presence: true

  has_many :laboratory_equipments, dependent: :destroy
end
