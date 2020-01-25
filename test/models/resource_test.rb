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

require "test_helper"

class ResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
