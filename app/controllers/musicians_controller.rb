class MusiciansController < ApplicationController
  def index
    @musicians = policy_scope(Musician)
  end

  def show
    @musician = Musician.find(params[:id])
    authorize @musician
  end

  private

  def mnusician_params
    params.require(:musician).permit(:avatar, :first_name, :last_name, :artistic_name,
       :artistic_bio, :phone_number, :genre, :category, :date_of_birth)
  end

  def set_user
    @musician = Musican.find(params[:id])
  end
end
