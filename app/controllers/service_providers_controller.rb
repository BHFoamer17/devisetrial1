class ServiceProvidersController < ApplicationController
  def index
    @service_providers = ServiceProvider.all
  end

  def show
    @service_provider = ServiceProvider.find(params[:id])
  end

  def new
    @service_provider = ServiceProvider.new
  end

  def create
    @service_provider = ServiceProvider.new
    @service_provider.company_name = params[:company_name]
    @service_provider.description = params[:description]

    if @service_provider.save
      redirect_to "/service_providers", :notice => "Service provider created successfully."
    else
      render 'new'
    end
  end

  def edit
    @service_provider = ServiceProvider.find(params[:id])
  end

  def update
    @service_provider = ServiceProvider.find(params[:id])

    @service_provider.company_name = params[:company_name]
    @service_provider.description = params[:description]

    if @service_provider.save
      redirect_to "/service_providers", :notice => "Service provider updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @service_provider = ServiceProvider.find(params[:id])

    @service_provider.destroy

    redirect_to "/service_providers", :notice => "Service provider deleted."
  end
end
