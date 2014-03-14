require 'irb/completion'
require 'pp'
IRB.conf[:AUTO_INDENT] = true

begin
  require 'irbtools/configure'
  Irbtools.add_package :more
  Irbtools.welcome_message = ''
  Irbtools.start
rescue LoadError
end
