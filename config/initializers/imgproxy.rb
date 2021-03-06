Imgproxy.configure do |config|
  # imgproxy endpoint
  #
  # Full URL to where your imgproxy lives.
  config.endpoint = ENV.fetch('IMGPROXY_ENDPOINT', 'http://localhost:8080')

  # Next, you have to provide your signature key and salt.
  # If unsure, check out https://github.com/imgproxy/imgproxy/blob/master/docs/configuration.md first.

  # Hex-encoded signature key
  config.hex_key = ENV['IMGPROXY_KEY']
  # Hex-encoded signature salt
  config.hex_salt = ENV['IMGPROXY_SALT']

  # Base64 encode all URLs
  # config.base64_encode_urls = true

  # Always escape plain URLs
  # config.always_escape_plain_urls = true
end

Imgproxy.extend_active_storage!(use_s3: true)
