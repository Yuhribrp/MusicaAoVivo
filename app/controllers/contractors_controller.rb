class ContractorsController < ApplicationController
  def index
    @contractors = policy_scope(Contractor)
  end

  def show
    @contractor = Contractor.find(params[:id])
    authorize @contractor
  end

  private

  def contractor_params
    params.require(:contractor).permit(:avatar, :full_name, :category, :phone_number)
  end

  def set_contractor
    @contractor = Contractor.find(params[:id])
  end
end
