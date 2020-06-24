class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCk0ODmBuM0TargWu8BC5ZvXpPFYXJElhuphFZbLBRk95XKX9ParaaUKgFbHPAv6/k6s8a8xbFAm8IFkVF/lyAhd0pgbGG6A+RGd7y7r1cc3Hy5KtErjigusgGtkO8ZoABmd8RmQPxBXhI7BgdRQAh82xaiztnCWiFCvw//3sby3yNz1cWjb9DSmlUeoIDpznSlhlNlFmUNbMS3/DLn0gGAI8pAaLYa1AXmU76OI0oMpzsnbW2orXeuPlj1TBKc+bteon3vRzk8mD6NbQQUVejlR91skHrs2C7m1gg6xZzXX3rjwivkcWfNdBDWhiksZHuKdqfnCWg41adpFStpbm7',
	}  
}

