class EnrollsController < ApplicationController
  before_action :set_enroll, only: [:show, :edit, :update, :destroy]

  # GET /enrolls
  # GET /enrolls.json
  def index

    @enrolls = Enroll.where(user_id: current_user.id)
    @courses = Course.where(user_id: current_user.id)
  end

  # GET /enrolls/1
  # GET /enrolls/1.json
  def show
  end

  # GET /enrolls/new
  def new
    @enroll = Enroll.new
  end

  # GET /enrolls/1/edit
  def edit
  end

  # POST /enrolls
  # POST /enrolls.json
  def create
    @enroll = Enroll.new(enroll_params)
    @enroll.user_id = current_user.id if current_user

    respond_to do |format|
      if @enroll.save
        Assignment.where(course_id: @enroll.course_id).each do |assignment|
          Grade.create(user_id: current_user.id, assignment_id: assignment.id)
      end
        format.html { redirect_to @enroll.course, notice: 'Enroll was successfully created.' }
        format.json { render :show, status: :created, location: @enroll }
      else
        format.html { render :new }
        format.json { render json: @enroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrolls/1
  # PATCH/PUT /enrolls/1.json
  def update
    respond_to do |format|
      if @enroll.update(enroll_params)
        format.html { redirect_to @enroll, notice: 'Enroll was successfully updated.' }
        format.json { render :show, status: :ok, location: @enroll }
      else
        format.html { render :edit }
        format.json { render json: @enroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolls/1
  # DELETE /enrolls/1.json
  def destroy
    @enroll.destroy
    respond_to do |format|
      format.html { redirect_to @enroll.course, notice: 'Student Unenrolled.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enroll
      @enroll = Enroll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enroll_params
      params.permit(:user_id, :course_id)
    end
end
