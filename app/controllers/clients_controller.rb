class ClientsController < ApplicationController
  before_action :current_user_must_be_client_user, :only => [:show, :edit, :update, :destroy]

  def current_user_must_be_client_user
    client = Client.find(params[:id])

    unless current_user == client.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = current_user.clients.ransack(params[:q])
      @clients = @q.result(:distinct => true).includes(:user, :allocations, :funds).page(params[:page]).per(10)

    render("clients/index.html.erb")
  end

  def show
    @allocation = Allocation.new
    @client = Client.find(params[:id])

    render("clients/show.html.erb")
  end

  def new
    @client = Client.new
    @allocation = Allocation.new
    @funds = Fund.all

    render("clients/new.html.erb")
  end

  def create
    @client = Client.new

    @funds = Fund.all

    @client.clientname = params[:clientname]
    @client.accountsize = params[:accountsize]
    @client.mgmt_fee = params[:mgmt_fee]
    @client.risktolerance = params[:risktolerance]
    @client.user_id = params[:user_id]


    #i do not think this works propoerly
    32.times do |i|
    @allocation = Allocation.new
    @allocation.client_id = params[:client_id]
    @allocation.fund_id = params[:"#{i}"]
    @allocation.percentage = params[:"#{i}_alloc"]
    save_status2 = @allocation.save
    end

# add logic to make sure doesn't add up to more than one here -- if i get an error re-render page or redirect with a notice
    save_status = @client.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/clients/new", "/create_client"
        redirect_to("/clients")
      else
        redirect_back(:fallback_location => "/", :notice => "Client created successfully.")
      end
    else
      render("clients/new.html.erb")
    end
  end

  def edit
    @client = Client.find(params[:id])

    render("clients/edit.html.erb")
  end

  def update
    @client = Client.find(params[:id])

    @client.clientname = params[:clientname]
    @client.accountsize = params[:accountsize]
    @client.mgmt_fee = params[:mgmt_fee]
    @client.risktolerance = params[:risktolerance]
    @client.user_id = params[:user_id]

    save_status = @client.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/clients/#{@client.id}/edit", "/update_client"
        redirect_to("/clients/#{@client.id}", :notice => "Client updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Client updated successfully.")
      end
    else
      render("clients/edit.html.erb")
    end
  end

  def destroy
    @client = Client.find(params[:id])

    @client.destroy

    if URI(request.referer).path == "/clients/#{@client.id}"
      redirect_to("/", :notice => "Client deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Client deleted.")
    end
  end
end
