class SessionsController < ApplicationController
  def new
    @session = Session.new
    render :new
  end

  def create
    @session = Session.new
    
    if @session.save
      redirect_to cats_url
    else
      flash.now[:errors] = @session.errors.full_messages
      render :new
    end
  end

  def destroy
  end

end