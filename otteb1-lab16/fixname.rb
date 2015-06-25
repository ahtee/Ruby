#!/usr/bin/ruby

require 'fileutils'
#command line parameters for directory, regex, and string
p = ARGV[0]
regex = ARGV[1]
s = ARGV[2]

#if the folder cntains a file list it in the 'old' array.
old = Array.new
file = File.expand_path(p)
old=Dir.entries(p).select {|f| File.file?(f)
#for each item in the array, see if the array value matches the regex. Idf it matches the regex, rename the file.
Dir.foreach(file) do |i|
        if i.match(regex)
            new = i.gsub(/#{regex}/, s)
            #new = gsub(regex, replace)
            FileUtils.mv(i, new)
        end
end
}
#end of program
