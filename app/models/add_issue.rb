class AddIssue < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :issue
  validates_presence_of :title
end
