# == Schema Information
#
# Table name: todo_items
#
#  id           :integer          not null, primary key
#  content      :string
#  todo_list_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
end
