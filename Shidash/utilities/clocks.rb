require 'tzinfo'
require 'date'

pst = TZInfo::Timezone.get('America/Los_Angeles').now.to_s.split(/[\s:]/)
est = TZInfo::Timezone.get('America/New_York').now.to_s.split(/[\s:]/)
cet = TZInfo::Timezone.get('Europe/Berlin').now.to_s.split(/[\s:]/)
day = Time.now

print day.strftime("%a %b %d %Y") + " " + pst[1] + ":" + pst[2] + " PST | " + est[1] + ":" + est[2] + " EST | " + cet[1] + ":" + cet[2] + " CET" 
