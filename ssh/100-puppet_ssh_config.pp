# /etc/puppetlabs/code/environments/production/manifests/100-puppet_ssh_config.pp

file {'/home/kennyg37/.ssh/config':
  ensure  => file,
  content => "Host your_server_hostname_or_ip\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
  owner   => 'kennyg37',
  group   => 'kennyg37',
  mode    => '0600',
}
