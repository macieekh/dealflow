# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Dealflow::Application.initialize!
Time::DATE_FORMATS[:entryitem_date] = "%Y-%m-%d"
