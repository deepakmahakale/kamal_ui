module KamalUi
  class DeployController < ApplicationController
    def show
      @deploy_config = YAML.load_file("config/deploy.yml")
    rescue StandardError => e
      # Handle errors, e.g., file not found, YAML parsing errors
      @error = e.message
    end
  end
end
