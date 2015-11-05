class SscsController < ApplicationController
  def index
    @ssc = Ssc.all
  end

  def new
    @ssc = Ssc.new
    
  end

  def edit
    #@ssc =Ssc.find(params[:id])
     
     end
     
     def create
        @ssc = Ssc.new(ssc_params)
        if @ssc.save
          flash[:notice]="created success fully"
          redirect_to(:controller=>'sscs', :action=> 'index')
        else 
          render 'new'
        end
     end
     
    
  def update
    @ssc = Ssc.update_attributes(ssc_params)
  end

  def show
    @ssc =Ssc.find_by_id(params[:id])
  end

  def destroy
    @ssc =Ssc.find(params[:id])
    @ssc.destroy
    flash[:notice]= "destroyed"
  end
  private
  
  def ssc_params
    params.require(:ssc).permit(:membership_id,:result,:year,:board,:created_by_id)
  end
end
