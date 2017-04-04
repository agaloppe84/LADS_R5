module ApplicationHelper

  def composed_plurname(type_name)
    if type_name.include? " "
      textarray = type_name.split
      if textarray.count > 2
        firstword = textarray[0]
        middleword = textarray[1]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        return real_plurname = "#{plurfirstword} #{middleword} #{finalword}"
      elsif textarray.count <= 2
        firstword = textarray[0]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        if finalword[-1] == "s"
          plurfinalword = finalword
        else
          plurfinalword = finalword.pluralize
        end
        return real_plurname = "#{plurfirstword} #{plurfinalword}"
      end
    elsif type_name.include? "-"
      textarray = type_name.split("-")
      if textarray.count > 2
        firstword = textarray[0]
        middleword = textarray[1]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        return real_plurname = "#{plurfirstword}-#{middleword}-#{finalword}"
      elsif textarray.count <= 2
        firstword = textarray[0]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        plurfinalword = finalword.pluralize
        return real_plurname = "#{plurfirstword}-#{plurfinalword}"
      end
    else
      if type_name.last(3) == "eau"
        cap_type_name = type_name.capitalize
        return real_plurname = "#{cap_type_name}x"
      else
        cap_type_name = type_name.pluralize.capitalize
        return real_plurname = "#{cap_type_name}"
      end
    end
  end

  def font_icon_dynamic
    @fontastic_icons = Info.iconsarray
  end


end

