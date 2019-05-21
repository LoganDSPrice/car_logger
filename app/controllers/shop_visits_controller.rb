class ShopVisitsController < ApplicationController
  before_action :set_shop_visit, only: %i[show edit update destroy]

  # GET /shop_visits
  def index
    @shop_visits = ShopVisit.all
  end

  # GET /shop_visits/1
  def show; end

  # GET /shop_visits/new
  def new
    @shop_visit = ShopVisit.new
  end

  # GET /shop_visits/1/edit
  def edit; end

  # POST /shop_visits
  def create
    @shop_visit = ShopVisit.new(shop_visit_params)

    if @shop_visit.save
      redirect_to @shop_visit, notice: "Shop visit was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /shop_visits/1
  def update
    if @shop_visit.update(shop_visit_params)
      redirect_to @shop_visit, notice: "Shop visit was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /shop_visits/1
  def destroy
    @shop_visit.destroy
    redirect_to shop_visits_url, notice: "Shop visit was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_shop_visit
    @shop_visit = ShopVisit.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def shop_visit_params
    params.require(:shop_visit).permit(:date, :starts_on, :ends_on, :miles, :car_id, :shop_id)
  end
end
