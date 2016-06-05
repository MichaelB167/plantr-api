# Plant controller
class PlantsController < ProtectedController
  before_action :set_plant, only: [:show, :update, :destroy]

  # GET /plants
  # GET /plants.json
  def index
    @plants = current_user.plants

    render json: @plants
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
    render json: @plant
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = current_user.plants.new(plant_params)

    if @plant.save
      render json: @plant, status: :created, location: @plant
    else
      render json: @plant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    @plant = current_user.plants.find(params[:id])

    if @plant.update(plant_params)
      head :no_content
    else
      render json: @plant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy

    head :no_content
  end

  private

  def set_plant
    @plant = current_user.plants.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:category, :harvest, :name, :quantity, :planted_on, :expected_harvest, :care_notes, :user, :user_id)
  end
end
