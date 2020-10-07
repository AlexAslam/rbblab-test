class HomeController < ApplicationController
  def index
  	@all_assets = (House.all + ComplexBuilding.all + CommercialUnit.all).sort{|s| s.created_at}
  end

  def buy
  	asset_class = params[:type].constantize
  	asset = asset_class.find(params[:id])
    user_buy = current_user.user_buys.new
    user_buy.buyings = asset
    respond_to do |format|
      if user_buy.save
        format.html { redirect_to home_index_url, notice: "#{asset_class} was successfully purchased." }
        format.json { render :show, status: :created, location: asset }
      else
        flash[:alert] = asset.errors.full_messages.join(', ')
        format.html { redirect_to home_index_url }
        format.json { render json: asset.errors, status: :unprocessable_entity }
      end
    end
  end

  def unbuy
  	asset_class = params[:type].constantize
    house = asset_class.find(params[:id])
    user_buy = current_user.user_buys.find_by(buyings:house)
    respond_to do |format|
      if user_buy.destroy
        format.html { redirect_to home_index_url, notice: "#{asset_class} was successfully UnPurchased." }
        format.json { render :show, status: :created, location: house }
      else
        flash[:alert] = house.errors.full_messages.join(', ')
        format.html { redirect_to home_index_url }
        format.json { render json: house.errors, status: :unprocessable_entity }
      end
    end
  end
end
