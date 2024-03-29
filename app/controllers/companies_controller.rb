class CompaniesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    
    @companies = Company.all
    
    
    respond_to do |format|
      format.html
      format.csv { render text: @companies.to_csv }
    end
  end

  def show
    respond_with(@company)
  end

  def new
    @company = Company.new
    respond_with(@company)
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    @company.save
    respond_with(@company)
  end

  def update
    @company.update(company_params)
    respond_with(@company)
  end

  def destroy
    @company.destroy
    respond_with(@company)
  end
  
  def import
    Company.import(params[:file])
    redirect_to companies_path, notice: "Companies Added Successfully"
  end
  
  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, :manager, :status, :terms)
    end
end
