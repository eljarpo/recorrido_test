class PagesController < ApplicationController
  def home
    @services = Service.all
    @service = Service.find(params[:service] || 1)

    if !params[:date].nil?
      if @service.this_week_shifts(params[:date].to_date).first.nil? 
        DayShiftGenerator.new(@service)
      end
    end
  end
end
