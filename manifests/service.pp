class fail2ban::service {
  $ensure = $fail2ban::start ? {true => running, default => stopped}

  service{'fail2ban':
    ensure => $ensure,
    enable => $fail2ban::enable,
  }
}
