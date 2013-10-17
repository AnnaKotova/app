require 'github_api'
class IssuesController < ApplicationController
  def index
  end

  def list
	issues = Github::Issues.new basic_auth: 'AnnaKotova:v80668027682'
	@posts =issues.list :user => @user_name, :repo => @repo_name
  end
end
