require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  let(:article) { Article.create!(title: "You won't believe this!", link: "Http://newsbake.com") }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: article.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: article.id
      expect(response).to have_http_status(:success)
    end
  end

end
