class ContractorsController < ApplicationController
  def index
    @contractors = Contractor.all
  end

  def show
    @contractor = Contractor.find(params[:id])
  end
end
