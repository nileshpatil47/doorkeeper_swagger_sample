# config/initializers/swagger.rb

class Swagger::Docs::Config
  def self.transform_path(path, api_version)
    # Make a distinction between the APIs and API documentation paths.
    path
  end

  def self.base_api_controllers
    [Api::V1::BaseController, Doorkeeper::TokensController]
  end
end

Swagger::Docs::Config.register_apis({
  '1.0' => {
    controller_base_path: '',
    api_file_path: 'public',
    base_path: 'http://localhost:3000',
    clean_directory: true
  }
})
