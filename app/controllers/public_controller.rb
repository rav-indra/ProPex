class PublicController < ApplicationController
  before_action :authenticate_user!
  def main
  end

  def about
  end
end
