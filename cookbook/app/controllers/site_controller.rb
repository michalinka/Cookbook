class SiteController < ApplicationController
  before_action :authenticate_user!
  def index
    @recipes = Recipe.order('created_at desc')
  end
end
