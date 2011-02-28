# Load the rails application
require File.expand_path('../application', __FILE__)

$CLASSPATH << "file:///#{Rails.root}/lib/java/sqljdbc4.jar"

# Initialize the rails application
LandInfo::Application.initialize!
