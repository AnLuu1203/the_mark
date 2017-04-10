class Admin::PhonesController < Admin::BaseController

  before_action :prepare_phone, only: [:edit, :update, :destroy]

  def index
    @phones = Products::Phone.all
  end

  def new
    @phone = Products::Phone.new
  end

  def create
    @phone = Products::Phone.new(phone_params)
    if @phone.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @phone.update(phone_params)
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    @phone.destroy
    redirect_to admin_path
  end

  private

  def prepare_phone
    @phone = Products::Phone.find(params[:id])
  end

  def phone_params
    params.require(:phone).permit(:name, :description, :price)
  end

end
