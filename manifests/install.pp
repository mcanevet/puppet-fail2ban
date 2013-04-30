class fail2ban::install {
  package{'fail2ban':
    ensure => $fail2ban::version
  }
}
