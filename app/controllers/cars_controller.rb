class CarsController < ApplicationController
    def index
        @selected_brands = params[:brand]  ||  [] 
        @cars = @selected_brands.present? ? Car.where(brand: @selected_brands) : Car.all
        respond_to do |format|
            format.html
        end
    end 
    
   def stream_action
      @cars = Car.all
      render turbo_stream: turbo_stream.replace(
      :cars_list,
      partial: 'cars_list_partial',
      locals: { cars: @cars }
    ) 
    end     
end
