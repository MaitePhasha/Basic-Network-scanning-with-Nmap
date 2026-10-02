# Basic Firewall Configuration with UFW
## Objective

The objective of this task was to configure a basic firewall on a Linux system using UFW (Uncomplicated Firewall) and apply rules to allow and deny specific types of network traffic.
## Tools Used
- Linux
- UFW (Uncomplicated Firewall)
- Virtual Machine

  ##Firewall Rules
  ### 1.Allow SSH Traffic
  ''''bash
  sudo ufw allow 22/tcp
  SSH uses TCP port 22 and allows secure remote administration of the Linux system.
  2. Deny HTTP Traffic
  bash
  sudo ufw deny 80/tcp
  HTTP uses port 80. This rule blocks incoming unencrypted HTTP traffic.
  3. Allow HTTPS Traffic
  sudo ufw allow 443/tcp
  4.Deny a Specific IP Range
  sudo ufw deny from 10.10.10.0/24
  This rule blocks incoming traffic originating from the specific IP range.
Enabling UFW
bash
sudo ufw enable
UFW was enabled after configuring the SSH rule
Verification
The configured firewall rules were verified using:
bash
sudo ufw status verbose
and
sudo ufw status  numbered
The output was documented with screenshots.
Testing

The denied HTTP traffic was tested to verify that the firewall rule was being enforced.

The testing method and results are documented in the screenshots included in this project.

Why These Rules Were Chosen

The rules were selected to demonstrate both allowing and denying network traffic.

SSH was allowed to permit secure remote administration.
HTTP was denied to demonstrate blocking a specific service.
HTTPS was allowed to demonstrate permitting encrypted web traffic.
A specific IP range was denied to demonstrate restricting traffic based on its source network.
What I Learned

Through this task I learned how to install, enable and configure UFW, create allow and deny rules, restrict traffic by port and IP range, and verify firewall rules from the Linux command line.

Evidence

Screenshots of the UFW configuration, active rules and testing results are included in the Screenshots folder.
