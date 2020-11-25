class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  def create
    @assignment = Assignment.new(assignment_params)
    @grade = Grade.where(@assignment.id)
    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment.course, notice: 'assignment was successfully created.' }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @assignment = Assignment.new
  end

  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to @assignment.course, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to @assignment.course, notice: 'assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

      private

      def set_assignment
        @assignment = Assignment.find(params[:id])
      end

      def assignment_params
        params.require(:assignment).permit(:full_credit, :name, :course_id)
      end
end
