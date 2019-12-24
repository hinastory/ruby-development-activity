#!/usr/bin/env ruby
# you need checkout ruby repository
# $ git clone https://github.com/ruby/ruby.git

require 'fileutils'

FileUtils.rm_rf('trend')
FileUtils.rm_rf('total')
FileUtils.mkdir('trend')
FileUtils.mkdir('total')
(1998..2019).each do |e|
    system("cd ruby; git shortlog -sne --no-merges --since='#{e}-01-01' --until='#{e}-12-31' > ../trend/#{e}.log")
    system("cd ruby; git shortlog -sne --no-merges --since='1998-01-01' --until='#{e}-12-31' > ../total/#{e}.log")
end
