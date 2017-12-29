module ApplicationHelper

  def municipalities_names(region)
    region.municipalities.collect(&:name).join(',')
  end

  def regions_names(municipality)
    municipality.regions.collect(&:name).join(',')
  end

end
