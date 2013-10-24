require 'github_api'
class IssuesController < ApplicationController
  def index
     @issue = Issue.new
  end
   def list
	issues = Github::Issues.new basic_auth: 'AnnaKotova:v80668027682'
	@posts =issues.list :user => params[:issue][:user], :repo => params[:issue][:repo]
  end
end
