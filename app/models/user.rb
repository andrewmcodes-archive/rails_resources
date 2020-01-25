# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  uid        :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  def self.find_for_omniauth(omniauth_params)
    user = find_or_initialize_by(uid: omniauth_params.uid)
    if user.new_record?
      user.email = omniauth_params.info.email
      user.save
    end
    user.id
  end
end
