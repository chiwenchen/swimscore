class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.create(team_strong_params)
    redirect_to add_staff_team_path(id: team.id)
  end

  def add_staff
    @team = Team.find(params[:id])
  end

  def create_staff
    Staff.create(name: params[:staff], team_id: params[:id], role: params[:role], gender: params[:gender])
    redirect_to add_staff_team_path(id: params[:id])
  end

  def assign_event
    @team = Team.find(params[:id])
    @assign_event = AssignEvent.new
  end

  def apply_event
    AssignEvent.create(staff_id: params[:athlete], event_id: params[:event])
    redirect_to assign_event_team_path(id: params[:id])
  end

  private

  def team_strong_params
    params.require(:team).permit(:name, :leader)
  end
end