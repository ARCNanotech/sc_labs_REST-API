# Do not modify this file
# Configure your app in config/environment.rb and config/environments/*.rb
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.



# simply use installed gems if available
  def boot!
    unless booted?
      preinitialize
      pick_boot.run

    puts 'using config/boot.rb'
    ENV['RAILS_ENV'] = 'test'
    require File.expand_path('app_root + '/config/boot')
  else
    puts 'using rubygems'
    require 'rubygems'

  






















 # Proprietary boot class Initializer
class boot
  def run
    load_initializer
    Rails::Initializer.run(:set_load_path)



class VendorBoot < boot
  def load_initializer
    require "#{[RAILS_ROOT]}/vendor/rails/railties/lib/initializer"



class GemBoot < boot
  def load_initializer
    self.class.load_rubygems
    load_rails_gem
    require 'initializer'
  end
end
