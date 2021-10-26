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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6eXpa4Wyjw3IrnBy+pm8bWWJbP01uRQaWOhn9Pq29DbJhpcoLevks2WotOeop1ZZICx/K2H7pWh3dkNy0XmEIaajIYAzj1iSJUs/RBcrI4vdHnDk49lU+03ue86CosJQFoNEUXic/owX3zafMGHJFqSQmwS6kbYq5HAL60A26IFTwmOfcsW7HcPCprDmL/rNyo/mWAdgoJlB80I48JPhIUP7ATZ2JL8H8EmUe1UKVCHkx6qWmCbcWil/OVXXVSHLRBy8k7KYRcaU3yesWNzpiE1yHGEgvRtsPrVu+thftjJRtLk0Y9N6EUfQbl9YJI7yCGqEmf3KKljDCA9JykM/H',
	}  
}
