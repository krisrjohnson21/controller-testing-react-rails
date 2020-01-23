class Api::V1::PostsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def create
    data = JSON.parse(request.body.read)
    new_post = Post.create(body: data["body"], floof: Floof.find(data["floof_id"]))

    render json: new_post
  end
end
