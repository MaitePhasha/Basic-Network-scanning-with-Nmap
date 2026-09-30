#Install UFW: sudo apt install
Enable UFw:sudo ufw enable
Configure rule to allow SSH traffic (port22): sudo ufw allow ssh
Configure rule to allow to deny HTTP traffic (port 80):sudo ufw deny http
Configure rule to allow HTTPS traffic: sudo ufw allow https
Configure rule to deny a specific ip range: 192.168.1.0
Verify active rules: sudo ufw status verbose
Test that denied traffic is actually blocked
Create a ufw_Configuration.sh script that applies all your rules in sequence (runnable script)
