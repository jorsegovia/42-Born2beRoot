OS=$(sudo head -n 2 /etc/os-release)
aastatus=$(sudo /usr/sbin/aa-status)
tunlp=$(sudo ss -tunlp)
ufw=$(sudo /usr/sbin/ufw status)
part=$(sudo lsblk)

wall "
        --------------------
	-------- OS --------
        --------------------
$OS

        --------------------
	---- Partitions ----
        --------------------
$part

        --------------------
	----- APPArmor -----
        --------------------
$aastatus

        --------------------
	------ Ports -------
        --------------------
$tunlp

        --------------------
	----- Firewall -----
        --------------------
$ufw"