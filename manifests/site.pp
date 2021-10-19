node default {
  file { '/root/READ.ME' :
    ensure => file,
    content => 'This is a readme',
  }  
}
