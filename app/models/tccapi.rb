class Tccapi < ActiveRecord::Base
  include HTTParty
  debug_output $stdout
  base_uri 'https://devapi.thecurrencycloud.com'
  #default_params :login_id => 'richardmisickinas@gmail.com', :api_key => '3a818f5f800e451c611fac577d6282ca9c3547111ec328c7d7fb68d8657cb609'
  
  # def self.initialize
    # # login = 'richardmisickinas@gmail.com'
   # #  api_key = '3a818f5f800e451c611fac577d6282ca9c3547111ec328c7d7fb68d8657cb609'
    # self.class.default_params :login_id => 'richardmisickinas@gmail.com', :api_key => '3a818f5f800e451c611fac577d6282ca9c3547111ec328c7d7fb68d8657cb609'
    # puts response["auth_token"]
  # end
  
  def login
    query_hash = {:login_id => 'richardmisickinas@gmail.com', :api_key => '3a818f5f800e451c611fac577d6282ca9c3547111ec328c7d7fb68d8657cb609'}
    response = self.class.post("/v2/authenticate/api", :query => query_hash).parsed_response
    @token = response["auth_token"]
    #return @token
  end
  
  def create_account(name)
    puts "token " + @token
    response = self.class.post("/v2/accounts/create", :headers => {"X-Auth-Token" => @token}, :query => {:account_name => name }).parsed_response
    puts response["errror_messages"]
  end
  
  def current_account
    puts "token #{self.login}"
    response = self.class.get("/v2/accounts/current", :headers => {"X-Auth-Token" => @token}).parsed_response
    puts response["account_name"]
  end
  
 def current_contact
    puts "token #{self.login}"
    response = self.class.get("/v2/contacts/current", :headers => {"X-Auth-Token" => @token}).parsed_response
    puts response["login_id"]
    @contact_id = response["id"]
 end
 
 def update_mob(mob)
   response = self.class.post("/v2/contacts/#{@contact_id}", :headers => {"X-Auth-Token" => @token}, :query => {:mobile_phone_number => mob, :phone_number => mob}).parsed_response
   puts response["login_id"]
 end
 
end
