require 'rails_helper'

RSpec.describe ComplexBuildingsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response.status).to eq(302)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      complex_building = create(:complex_building)
      get :create,params:{id:complex_building.id}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      complex_building = create(:complex_building)
      get :show,params:{id:complex_building}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      complex_building = create(:complex_building)
      get :edit,params:{id:complex_building}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      complex_building = create(:complex_building)
      get :update,params:{id:complex_building}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      complex_building = create(:complex_building)
      get :destroy,params:{id:complex_building}
      expect(response.status).to eq(302)
    end
  end

end
