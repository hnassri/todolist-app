class EmailsController < ApplicationController

  def index
    @email = Email.all
  end

  def create
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html {redirect_to emails_path}
      format.js
    end
  end

  def destroy
    @destro = Email.find(params[:id])
    @destro.destroy

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js  
   end
  end
end
