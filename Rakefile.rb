require 'rubygems'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/contrib/sshpublisher'

task :default => :test

task :test do
  require File.dirname(__FILE__) + '/test/all_tests.rb'
end

desc 'Generate RDoc'
Rake::RDocTask.new do |task|
