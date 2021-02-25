class WidgetsController < ApplicationController
  def show
    @widget = Widget.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @widget}
    end
  end

  def create
    @widget = Widget.create!(params[:widget])

    respond_to do |format|
      format.html { redirect_to widget_url(@widget) }
      format.json { render json: @widget}
    end
  end
end