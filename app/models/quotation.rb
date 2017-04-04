class Quotation < ApplicationRecord
  validates :email, presence: { message: "email requis" }
  validates :name, presence: { message: "nom requis" }
  validates :firstname, presence: { message: "prénom requis" }
  validates :city, presence: { message: "ville requise" }
  validates :phone, presence: { message: "téléphone requis" }
  validates :zipcode, presence: { message: "code postal requis" }
  validates :blindttype, presence: { message: "type de produit requis" }
  validates :message, presence: { message: "message requis" }
  validates :address, presence: { message: "adresse requise" }



  def self.current_year_and_month_quotations(year, month)
    if month == 12
      Quotation.where({ created_at: (DateTime.new(year,month,1,1,0,0))..DateTime.new((year + 1),(month - 11),1,1,0,0) })
    else
      Quotation.where({ created_at: (DateTime.new(year,month,1,1,0,0))..DateTime.new(year,(month+1),1,1,0,0) })
    end
  end

  def self.dynamic_quotation_counter(year)
      @typesname = Type.all.map { |type| type.name.capitalize }
      @all_year_categories = Hash.new
      @years = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
      @years.each_with_index do |month, index|
        @category = 0
        @typesname.each_with_index do |type_name, type_index|
          @all_year_categories["#{month}_#{type_index+1}"] = ((Quotation.current_year_and_month_quotations(year, index + 1)).where(blindttype: "#{type_name}")).count
        end
      end
      return @all_year_categories
  end


end
