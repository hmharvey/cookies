class CookieBatchesController < ApplicationController
  def index 
  	@cookie_batches = CookieBatch.all 
  end

  def new
  	@cookie_batch = CookieBatch.new 
  end

  def create
  	@cookie_batch = CookieBatch.new(cookie_batch_params)
  	if @cookie_batch.save 
  		redirect_to cookie_batches_path 
  	else 
  		render :new
  	end
  end

  def destroy
  	@cookie_batch = CookieBatch.find(params[:id])
  	@cookie_batch.destroy 
  	redirect_to cookie_batches_path
  end

 private 

 	def cookie_batch_params
 		params.require(:cookie_batch).permit(:number_of_cookies, :sender_id, :recipient_id)
 	end

end
