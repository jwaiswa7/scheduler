# frozen_string_literal: true

class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def index
    @companies = current_user.companies
  end

  def new 
    @company = Company.new
  end

  def create 
    @company = Company.new(company_params)
    if @company.save
      company_link = CompanyLink.new(user: current_user, company: @company, role: "admin", status: "accepted")
      company_link.save
      redirect_to companies_path
    else
      render :new
    end
  end

  private 

  def company_params
    params.require(:company).permit(:name, :address, :industry)
  end
end
