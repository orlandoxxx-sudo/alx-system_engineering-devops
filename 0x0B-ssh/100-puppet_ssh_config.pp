#!/usr/bin/env bash
# ussing puppet command 

file { 'ect/ssh/ssh_config':
	ensure => present,

content =>"
	#SSH client configuration
	host*
	IdentifyFile ~/.ssh/school
	PasswordAuthentication no
}
