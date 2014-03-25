require 'irb/completion'
require 'pp'
IRB.conf[:AUTO_INDENT] = true

require 'irbtools/configure'
Irbtools.add_package :more
Irbtools.welcome_message = ''
Irbtools.start
