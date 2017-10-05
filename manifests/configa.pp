class ssh::configa (
  $permit_root_login = $::ssh::permit_root_login,
  $port              = $::ssh::port,   
) {
  notify { "value is ${permit_root_login}": } 
  file { '/etc/ssh/sshd_config':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => template('ssh/sshd_config.erb'),
  }
}
