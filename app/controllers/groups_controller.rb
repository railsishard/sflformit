class GroupsController < ApplicationController
  before_filter :authenticate_trainer!
#  before_action :set_group, only: [:show, :edit, :update, :destroy]


  # GET /groups
  # GET /groups.json
  def index
    @groups = current_trainer.groups
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @attendance_registers = AttendanceRegister.all
    @group = Group.find(params[:id])
    if @gardener
    @gardener = Gardener.find(params[:gardener_id])
    end
  end


  # GET /groups/new
  def new
    @group = current_trainer.groups.build
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    redirect_to groups_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :area, :avatar, :resume, :trainer_id)
    end

end
