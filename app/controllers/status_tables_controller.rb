class StatusTablesController < ApplicationController
	def index
    @status_tables = StatusTable.all
	end

  def show
  end

  def new
    @status_tables = StatusTable.new
  end
end