class Issue < ActiveRecord::Base
  attr_accessible :repo, :user
	has_many :add_issues
	validates_presence_of :repo, :user
end
