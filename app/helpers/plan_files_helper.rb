module PlanFilesHelper
  def tiff_file_column(plan_file)
    unless plan_file.drawings.empty?
      link_to "#{plan_file.drawings.first.tiff_file}.tif", "http://gtisdev.pac.pwgsc.gc.ca/land_info/ScannedDWG/#{plan_file.drawings.first.tiff_file}.tif"
    end
  end
end
