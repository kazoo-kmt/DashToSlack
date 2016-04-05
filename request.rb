require 'net/http'
require 'uri'
require 'json'

url = "https://hooks.slack.com/services/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"
uri = URI.parse(url)
https = Net::HTTP.new(uri.host, uri.port)

https.use_ssl = true  # Use https
req = Net::HTTP::Post.new(uri.request_uri)

# req["Content-Type"] = "application/json"  # Add http request header
req["Content-Type"] = "application/json"  # Add http request header
payload={
  "channel" => "#random",
  "username" => "gatekeeper",
  "text" => "The building is open; commence hacking",
  "icon_emoji" => ":robot_face:"}.to_json
req.body = payload  # Set JSON to request body
res = https.request(req)

puts "code -> #{res.code}"
puts "msg -> #{res.message}"
puts "body -> #{res.body}"
