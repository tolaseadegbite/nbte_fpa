# == Schema Information
#
# Table name: workshops
#
#  id            :bigint           not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :integer
#
class Workshop < ApplicationRecord
    belongs_to :department
    validates :name, presence: true

    has_many :workshop_equipments, dependent: :destroy
end