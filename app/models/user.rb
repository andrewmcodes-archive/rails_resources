# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string           default("Anonymous"), not null
#  admin      :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................
  # relationships .............................................................
  has_many :resources, dependent: :nullify

  # validations ...............................................................
  validates :name, presence: true

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............

  # class methods .............................................................
  class << self
    def find_for_omniauth(omniauth_params)
      user = find_or_initialize_by(uid: omniauth_params.uid)
      if user.new_record?
        user.name = omniauth_params.info&.name
        user.save
      end
      user.id
    end
  end

  # public instance methods ...................................................
  # protected instance methods ................................................
  # private instance methods ..................................................
end
