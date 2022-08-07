# == Schema Information
#
# Table name: videos
#
#  id         :bigint           not null, primary key
#  title      :string
#  url        :string
#  minAge     :integer
#  owner_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Video < ApplicationRecord
  belongs_to :owner
  has_and_belongs_to_many :categories
end
