
class ChoresController < OpenReadController
  # before_action :set_chore, only: [:show, :update, :destroy]
  before_action :set_chore, only: [:update, :destroy]

  # GET /chores
  def index
    # @chores = Chore.all
    @chores = current_user.chores
    render json: @chores
  end

  # GET /chores/1
  def show
    render json: @chore
  end

  # POST /chores
  def create
    # @chore = Chore.new(chore_params)
    @chore = current_user.chores.build(chore_params)

    if @chore.save
      render json: @chore, status: :created, location: @chore
    else
      render json: @chore.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chores/1
  def update
# binding.pry
    if @chore.update(chore_params)
      render json: @chore
    else
      render json: @chore.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chores/1
  def destroy
    @chore.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chore
      # @chore = Chore.find(params[:id])
      @chore = current_user.chores.find(params[:id])

    end

    # Only allow a trusted parameter "white list" through.
    def chore_params
      params.require(:chore).permit(:chore_name, :directions, :day_of_week)
    end
end
