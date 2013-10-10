require 'rails'
require 'ember/auth/session/cookie/source'
require 'ember/auth/session/cookie/rails/version'
require 'ember/auth/session/cookie/rails/engine'

module Ember
  module Auth
    module Session
      module Cookie
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.session.cookie.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Session::Cookie::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
