class Api::V1::FloofsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }


  def show
    floof = Floof.find(params[:id])
    posts = floof.posts.order(created_at: :desc)

    render json: {floof: floof, posts: posts}
  end
end
