ENV['BUNDLE_GEMFILE'] = File.expand_path('../../../../Gemfile', __FILE__)

require 'rubygems'
require 'bundler'

Bundler.setup

$:.unshift File.expand_path('../../../../lib', __FILE__)

require "action_controller/railtie"

Bundler.require

ApplicationController = Class.new(ActionController::Base)

require 'rrod/rails'

module Dummy
  class Application < ::Rails::Application
    config.consider_all_requests_local = !Rails.env.production?
    config.cache_classes = !Rails.env.development?
    config.eager_load = true
    config.active_support.deprecation = :stderr
    config.secret_token = 'c158df0a60dd42619ed5bac748af022907e32060cd2d299b26946af0cbb4de4276c67ba596bf523ad310b12ba35389f60cdee0a538f6754753864bb309e89a85'
  end
end

Dummy::Application.initialize!


