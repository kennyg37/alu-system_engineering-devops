# /etc/puppetlabs/code/environments/production/manifests/100-puppet_ssh_config.pp

file {'/etc/ssh/ssh_config':
  ensure  => file,
  content => "ubuntu\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
  owner   => 'kennyg37',
  group   => 'kennyg37',
  mode    => '0600',
}
