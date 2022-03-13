module CloudReactorAPIClient
  module ConfigurationPatches
    # Override configuration to set the Token prefix required for the
    # CloudReactor API Server
    def initialize
      super
      @api_key_prefix = { 'tokenAuth' => 'Token' }
    end
  end
end

CloudReactorAPIClient::Configuration.prepend(
  CloudReactorAPIClient::ConfigurationPatches)
