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
FactoryBot.define do
  factory :goal do
    
  end
end
