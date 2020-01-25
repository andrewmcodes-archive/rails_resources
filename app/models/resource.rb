# == Schema Information
#
# Table name: resources
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  url         :string           not null
#  description :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Resource < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................

  # relationships .............................................................
  belongs_to :user

  # validations ...............................................................
  validates :title, presence: true
  validates :url, presence: true

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  acts_as_taggable

  # class methods .............................................................
  class << self
  end

  # public instance methods ...................................................
  # protected instance methods ................................................
  # private instance methods ..................................................
end
