# == Schema Information
#
# Table name: facilities
#
#  id            :bigint           not null, primary key
#  name          :string
#  specification :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  office_id     :integer
#
class Facility < ApplicationRecord
    validates :name, :specification, presence: true
        validates :name, length: {minimum: 1, maximum: 25}, uniqueness: { scope: :facility, message: "unique per facility" }
    belongs_to :office
end
