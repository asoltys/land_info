module DrawingsHelper
 def drawing_tiff_file_column(record)
    link_to record.tiff_file, "file:///R:/rps/databases/#{record.tiff_file}.tif"
 end

 def drawing_drawing_file_name_form_column(record, options)
    file_field :tiff_file
 end
end
