# Basic-Network-scanning-with-Nmap
A practical cybersecurity lab documenting network reconnaissance and Nmap scanning techniques.
##Nmap Installation
## Step 1
I first updated the nmap repository
bash
sudo apt update
#Step 2
sudo apt install nmap
#Step 3
nmap --version
#Performing a Service scan
nmap -sV 192.168.10.110
Port 135/tcp msrpc Microsoft RPC -Remote Communication/service exposure
Port 139/tcp netbios-ssn NetBios session Service -Older Windows Networking, information exposure
Port 445/tcp microsoft-ds SMB -File/printer sharing; historically significant attack surface
N.B These ports expose Windows Networking services. Their presence increases the system's attack surface.
#Perfomed an OS scan
bash
sudo nmap -O 192.168.10.110
MAC ADDRESS: 08:00:27:**:**:** (Oracle VirtualBox Virtual NIC)
Network distance: 1 hop
#All open ports and services running on them
port 135/tcp msrpc
port 193/tcp Netbios -ssn
Port 445/tcp microsoft-ds
#Port 135/tcp msrpc Microsoft RPC -Remote Communication/service exposure
Port 139/tcp netbios-ssn NetBios session Service -Older Windows Networking, information exposure
Port 445/tcp microsoft-ds SMB -File/printer sharing; historically significant attack surface
