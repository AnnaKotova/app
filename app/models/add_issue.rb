class AddIssue < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :ussue
end
