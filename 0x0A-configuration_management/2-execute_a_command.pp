#Using Puppet, create a manifest that kills a process named killmenow.

exec { 'killmenow':
  command => 'pkill -f killmenow',
  onlyif  => 'pgrep -f killmenow',
}
