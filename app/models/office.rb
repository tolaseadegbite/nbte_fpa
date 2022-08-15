# == Schema Information
#
# Table name: offices
#
#  id             :bigint           not null, primary key
#  name           :string
#  no_of_occupant :integer
#  occupant       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  school_id      :bigint           not null
#
# Indexes
#
#  index_offices_on_school_id  (school_id)
#
# Foreign Keys
#
#  fk_rails_...  (school_id => schools.id)
#
class Office < ApplicationRecord
    validates :name, :no_of_occupant, :occupant, presence: true
    belongs_to :school

    has_many :office_facilities, dependent: :destroy
  end
