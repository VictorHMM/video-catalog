# == Schema Information
#
# Table name: owners
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Owner < ApplicationRecord
    has_many :videos
    validates :name, presence: true
end
