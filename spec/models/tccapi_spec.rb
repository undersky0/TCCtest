require 'rails_helper'

RSpec.describe Tccapi, :type => :model do
   before do
      @a_class = Class.new do
         include HTTParty
         base_uri 'https://devapi.thecurrencycloud.com'
      end
   end
   
   it "logs user in" do
     query_hash = {:login_id => 'richardmisickinas@gmail.com', :api_key => '3a818f5f800e451c611fac577d6282ca9c3547111ec328c7d7fb68d8657cb609'}
    response = @a_class.post("/v2/authenticate/api", :query => query_hash).parsed_response
    expect(response["auth_token"]).to_not be_nil
   end
   
   
   
end
