# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string           default("Anonymous"), not null
#  role       :integer          default("member"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
