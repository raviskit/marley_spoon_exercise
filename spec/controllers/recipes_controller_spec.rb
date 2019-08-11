require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  let(:recipe) { build(:recipe)}

  describe "GET #index" do
    it "lists out the recipes" do
      get :index
      expect(response).to render_template :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET show" do
    it "render the show page" do
      get :show, params: { id: 1 }
      expect(response).to render_template :show
      expect(response.status).to eq(200)
    end
  end
end
