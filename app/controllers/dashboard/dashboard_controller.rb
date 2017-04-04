class Dashboard::DashboardController < ApplicationController

  def quotations
    @quotations = Quotation.all.order(:id)
    @non_treated_quotas = @quotations.where(treated: false)
  end

  def pathfilter
  end

  def analytics
    Quotation.dynamic_quotation_counter(2017)
  end

end


















