class ItemsController < ApplicationController
  
  def add_cart
    session[:cart] ||= {}
    item = Item.where(:id => params[:id]).first
    if item
      key = item.id.to_s
      session[:cart][key] ||= 0
      session[:cart][key] += 1
    end
    render :json => {:counter => session[:cart].length}.to_json
  end





  # GET /items
  def index
    #@items = Item.all
    #render :text => params.to_s.to_json
    @ans = nil
    if simple_captcha_valid?  #驗證碼驗正(避免機器人用)
      @ans = true
    else
      @ans = false
      #redirect_to :action => :index,:notice => "wtf"
    end
  end

  # GET /items/1
  def show
    @item = Item.find(param[:id])
  end
end
