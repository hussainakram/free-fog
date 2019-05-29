# Put here the variables used by all the environments
unless Rails.env.test?
  # Variables not used by the test environment
  variables = %w[secret_key_base twilio_account_sid twilio_auth_token]
end

Figaro.require_keys(variables)
