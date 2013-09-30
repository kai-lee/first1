
#!/usr/bin/env ruby
value=ARGV[0]
def test(value)
star="**************************************************"
x = `grep -liry --include "*.rb" --include "*.erb" --include "*.js" --include "*.css" --include "*.html" --include "*.yml" --include "*.txt" "#{value}" /var/www/first1/ | sort -u`
y = `grep -Hirny --include "*.rb" --include "*.erb" --include "*.js" --include "*.css" --include "*.html" --include "*.yml" --include "*.txt" "#{value}" /var/www/first1 | sort` 
puts "Files with names that matches <" + "#{value}" + "=>" + "\n" + star + "\n" 
x.each_line{|x| puts "  " + x}
puts  "\n" + "\n" + "\n" + "Files with content that matches <" + "#{value}" + "=>" + "\n" + star + "\n"
y.each_line{|y| puts  "  " + y}
end

test(value)

