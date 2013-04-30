class fail2ban(
  $version = 'present',
  $enable = true,
  $start = true,
) {
  class{'fail2ban::install': } ->
  class{'fail2ban::config': } ~>
  class{'fail2ban::service': } ->
  Class['fail2ban']
}
