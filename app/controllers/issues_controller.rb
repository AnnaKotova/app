require 'github_api'
class IssuesController < ApplicationController
  def index
     @issue = Issue.new
  end
   def list
		@add_issue = AddIssue.new
		issues = Github::Issues.new basic_auth: 'AnnaKotova:v80668027682'
        if params[:add_issue]
			issues.create :user => params[:add_issue][:user], :repo => params[:add_issue][:repo], :title => params[:add_issue][:title], :body => params[:add_issue][:body] 
			@user1 = params[:add_issue][:user]
			@repo1= params[:add_issue][:repo]
		else
			@user1 = params[:issue][:user]
			@repo1= params[:issue][:repo]
		end
		@posts =issues.list :user => @user1, :repo => @repo1
  end	
 end

