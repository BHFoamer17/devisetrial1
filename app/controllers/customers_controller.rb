class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new
    @customer.industry_type_id = params[:industry_type_id]
    @customer.space_type_id = params[:space_type_id]
    @customer.business_id = params[:business_id]
    @customer.country = params[:country]
    @customer.zip = params[:zip]
    @customer.state = params[:state]
    @customer.city = params[:city]
    @customer.website = params[:website]
    @customer.company = params[:company]
    @customer.last_name = params[:last_name]
    @customer.first_name = params[:first_name]

    if @customer.save
      redirect_to "/customers", :notice => "Customer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])

    @customer.industry_type_id = params[:industry_type_id]
    @customer.space_type_id = params[:space_type_id]
    @customer.business_id = params[:business_id]
    @customer.country = params[:country]
    @customer.zip = params[:zip]
    @customer.state = params[:state]
    @customer.city = params[:city]
    @customer.website = params[:website]
    @customer.company = params[:company]
    @customer.last_name = params[:last_name]
    @customer.first_name = params[:first_name]

    if @customer.save
      redirect_to "/customers", :notice => "Customer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @customer = Customer.find(params[:id])

    @customer.destroy

    redirect_to "/customers", :notice => "Customer deleted."
  end
end
