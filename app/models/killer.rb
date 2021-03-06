# == Schema Information
#
# Table name: killers
#
#  id         :integer          not null, primary key
#  name       :string
#  image_url  :string
#  jail_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Killer < ApplicationRecord
  belongs_to :jail
  has_many :killer_categories, dependent: :destroy
  has_many :categories, through: :killer_categories
end
