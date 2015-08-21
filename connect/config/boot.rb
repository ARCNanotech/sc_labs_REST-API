ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.




def boot!
  unless booted?
    preinitialize
    pick_boot.run
end






















 # Proprietary boot class Initializer
class boot
  def run
    load_initializer
    Rails::Initializer.run(:set_load_path)
end


class VendorBoot < boot
  def load_initializer
    require "#{[RAILS_ROOT]}/vendor/rails/railties/lib/initializer"
  end
end

class GemBoot < boot
  def load_initializer
    self.class.load_rubygems
    load_rails_gem
    require 'initializer'
