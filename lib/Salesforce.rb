class Salesforce
  def initialize
    client = Databasedotcom::Client.new :client_id => SFDC_CONFIG["client_id"], :client_secret => SFDC_CONFIG["client_secret"]
    client.authenticate :username => SFDC_CONFIG["username"], :password => SFDC_CONFIG["password"] + SFDC_CONFIG["security_token"]   #=> "the-oauth-token"
    client.sobject_module = Salesforce

    # materialize all objects
    SFDC_CONFIG["objects"].each do |sobject|
      client.materialize(sobject)
    end
  end
end