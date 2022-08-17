# == Schema Information
#
# Table name: workshops
#
#  id               :bigint           not null, primary key
#  cost             :integer
#  gap              :integer
#  name             :string
#  nbte_number      :integer
#  nbte_requirement :integer
#  unit             :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  department_id    :bigint           not null
#
# Indexes
#
#  index_workshops_on_department_id  (department_id)
#
# Foreign Keys
#
#  fk_rails_...  (department_id => departments.id)
#
class Workshop < ApplicationRecord
    belongs_to :department
    validates :name, :nbte_number, :nbte_requirement, :unit, :department_id, :gap, :cost, presence: true

    has_many :workshop_equipments, dependent: :destroy
end
