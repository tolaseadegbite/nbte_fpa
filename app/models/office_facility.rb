# == Schema Information
#
# Table name: office_facilities
#
#  id            :bigint           not null, primary key
#  name          :string
#  specification :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  office_id     :bigint           not null
#
# Indexes
#
#  index_office_facilities_on_office_id  (office_id)
#
# Foreign Keys
#
#  fk_rails_...  (office_id => offices.id)
#
class OfficeFacility < ApplicationRecord
    validates :name, :specification, presence: true
    belongs_to :office
end
