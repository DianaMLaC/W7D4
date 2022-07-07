# == Schema Information
#
# Table name: goals
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  details    :string           not null
#  status     :boolean          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Goal, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:details)}
  it {should allow_value(true, false).for(:status)}
  it {should belong_to(:user)}
end
