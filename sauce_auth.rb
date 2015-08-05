http = "https://saucelabs.com/rest/v1/evilbillionaire/jobs/bdc1392a2e2b42cea2788c699c54c74d"

body = {"name" => "Log In Test"}.to_json

RestClient::Request.execute(
  :method => :put,
  :url => http,
  :user => username,
  :password => access_key
  :headers => {:content_type => "application/json"},
  :payload => body
)
