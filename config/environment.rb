# Load the rails application
require File.expand_path('../application', __FILE__)

unless $CLASSPATH.nil?
  $CLASSPATH << "file:///#{Rails.root}/lib/java/sqljdbc4.jar"
end

# Initialize the rails application
LandInfo::Application.initialize!
