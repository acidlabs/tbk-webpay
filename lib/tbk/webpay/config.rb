require 'yaml'

module TBK
  module Webpay
    class Config
      attr_accessor :config_filepath, :tbk_webpay_cgi_base_url

      # Public: Loads the configuration file puntopagos.yml
      # If it's a rails application it will take the file from the config/ directory
      #
      # env - Environment.
      #
      # Returns a Config object.
      def initialize env = nil, config_override = nil
        if env
          # For non-rails apps
          @config_filepath = File.join(File.dirname(__FILE__), "..", "..", "config", "tbk-webpay.yml")
          load(env)
        else
          @config_filepath = File.join(Rails.root, "config", "tbk-webpay.yml")
          load(Rails.env)
        end
      end

      private

      # Public: Initialize variables based on puntopagos.yml
      #
      # rails_env - Environment.
      #
      # Returns nothing.
      def load(rails_env)
        config = YAML.load_file(@config_filepath)[rails_env]
        @tbk_webpay_cgi_base_url = config['cgi_base_url']
      end
    end
  end
end