module DrawingsHelper
 def drawing_file_name_column(record)
    link_to record.file_name, "file:///R:/Drawings/#{record.file_name}"
 end
end
