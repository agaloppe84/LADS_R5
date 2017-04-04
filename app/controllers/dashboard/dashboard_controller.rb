class Dashboard::DashboardController < ApplicationController

  def quotations
    @quotations = Quotation.all.order(:id)
    @non_treated_quotas = @quotations.where(treated: false)
  end

  def pathfilter
  end

  def analytics
    @current_year = DateTime.now.year
    @current_year_quotations = Quotation.dynamic_quotation_counter(@current_year)
    @current_full_year = Quotation.all_year(@current_year)

    # example for a specific year
    #  @2015_year_quotations = Quotation.dynamic_quotation_counter(2015)
    #  @2015_full_year = Quotation.all_year(2015)

    @types_full_names = Type.all.map { |type| type.name.capitalize }
    @full_years = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
  end

end


















