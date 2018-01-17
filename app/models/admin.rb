# == Schema Information
#
# Table name: admins
#
#  id         :integer          not null, primary key
#  nick_name  :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Admin < ApplicationRecord
end
