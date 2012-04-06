require 'salesforce'

SFDC_CONFIG = YAML.load_file("#{Rails.root}/config/salesforce.yml")
Salesforce.new