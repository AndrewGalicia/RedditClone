# == Schema Information
#
# Table name: subs
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :string
#  mod_id      :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Sub < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  belongs_to :mod,
  foreign_key: :mod_id,
  class_name: :Mod  
end
