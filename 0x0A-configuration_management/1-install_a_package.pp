#!/usr/bin/puppet

# Install a specific version of Flask (2.1.0) using pip3
package { 'python3-flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Package['python3-pip'], # Ensure pip3 is installed first
}

# Install pip3 if not already installed
package { 'python3-pip':
  ensure => installed,
}