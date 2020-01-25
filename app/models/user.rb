# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string           default("Anonymous"), not null
#  role       :string           default("member"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  ROLES = ["administrator", "member"].freeze

  # extends ...................................................................
  # includes ..................................................................
  # relationships .............................................................

  # validations ...............................................................
  validates :created_at, presence: true
  validates :name, presence: true
  validates :role, inclusion: {in: ROLES.values}
  validates :updated_at, presence: true

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
