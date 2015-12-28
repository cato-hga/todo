# == Schema Information
#
# Table name: todo_items
#
#  id           :integer          not null, primary key
#  content      :string
#  todo_list_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  completed_at :datetime
#

class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  def completed?
    !completed_at.blank?
  end
end
