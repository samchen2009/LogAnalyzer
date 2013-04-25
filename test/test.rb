require 'treetop'
require './libs/top.rb'
require 'pp'

text = <<END
pid tid adfa 
1552  1557  0   1% R 506316K  26284K  fg app_40   Compiler        com.google.android.videos

END

parser = TopParser.new
pp parser.parse(text, :consume_all_input => false)

