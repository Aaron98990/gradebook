class AssignmentsController < ApplicationController

  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.course_id = params[:course_id]
    respond_to do |format|
      if @assignment.save
        format.html { redirect_to '/courses', notice: 'assignment was successfully created.' }
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
      format.html { redirect_to '/courses', notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

      private

      def assignment_params
        params.require(:assignment).permit(:full_credit, :name)
      end
end
