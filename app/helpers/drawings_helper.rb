module DrawingsHelper
 def drawing_file_name_column(record)
    link_to record.file_name, "file:///R:/ressurveys/Drawings/#{record.file_name}"
 end

  def drawing_surveyor_id_column(record, options)
    return '' if record.surveyor.nil?
    record.surveyor.name
  end

  def drawing_surveyor_id_form_column(record, options)
    select_tag :surveyor_id,
      options_from_collection_for_select(
        Surveyor.order("first_name ASC").all,
        'id',
        'name',
        Surveyor.where("last_name = 'Robertson'").first.id
      ),
      options
  end
end
