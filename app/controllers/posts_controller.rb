class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index; end
end
