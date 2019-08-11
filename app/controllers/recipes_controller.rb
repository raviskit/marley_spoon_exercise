class RecipesController < ApplicationController
  before_action :initialize_contentful, only: [:index, :show]

  def index
    @recipes = @client.entries(content_type: ENV['CONTENTFUL_PRODUCT_CT_ID'])
  end

  def show
    @recipe = @client.entry(params[:id])
  end

  private

  def initialize_contentful
    @client ||= Contentful::Client.new(
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      space: ENV['CONTENTFUL_SPACE_ID'],
      dynamic_entries: :auto,
      raise_errors: true,
      raise_for_empty_fields: false
    )
  end
end