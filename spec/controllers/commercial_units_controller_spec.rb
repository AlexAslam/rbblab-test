require 'rails_helper'

RSpec.describe CommercialUnitsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response.status).to eq(302)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      commercial_unit = create(:commercial_unit)
      get :create,params:{id:commercial_unit.id}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      commercial_unit = create(:commercial_unit)
      get :show,params:{id:commercial_unit}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      commercial_unit = create(:commercial_unit)
      get :edit,params:{id:commercial_unit}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      commercial_unit = create(:commercial_unit)
      get :update,params:{id:commercial_unit}
      expect(response.status).to eq(302)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      commercial_unit = create(:commercial_unit)
      get :destroy,params:{id:commercial_unit}
      expect(response.status).to eq(302)
    end
  end

end
