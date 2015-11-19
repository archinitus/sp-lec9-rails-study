CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAILMMY236ZSR3KQJA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'sp-lec11-s3'                          # required
end