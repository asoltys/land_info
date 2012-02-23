module LocationsHelper
  def location_id_form_column(record, options)
    collection_select(:record, :location_id, Location.find(:all, :order => "name"), :id, :name, {}, options) 
  end 
end
