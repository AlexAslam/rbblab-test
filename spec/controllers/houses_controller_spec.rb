require 'rails_helper'

RSpec.describe HousesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response.status).to eq(302)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      house = create(:house)
      get :create,params:{id:house.id}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      house = create(:house)
      get :show,params:{id:house}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      house = create(:house)
      get :edit,params:{id:house}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      house = create(:house)
      get :update,params:{id:house}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      house = create(:house)
      get :destroy,params:{id:house}
      expect(response.status).to eq(302)
    end
  end

end
