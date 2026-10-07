# Capture Network Traffic with Wireshark

## Wireshark Installation

Wireshark was installed on the Linux virtual machine to capture and analyse live network traffic.

### Installation Process

Wireshark was installed using the Linux package manager with the following command:
bash
sudo apt update
sudo apt install wireshark

After installation, the Wireshark application was launched to verify that the installation was successful.

### Permissions and Capture Access
During the initial setup, Wireshark reported that the user did not have sufficient permission to capture packets on the network interface.
On Debian-based Linux systems, packet capture permissions can be managed through the wireshark group. The user was added to the Wireshark group so that packet capture could be performed without running the entire Wireshark application as root.
After the permission configuration was completed, Wireshark was reopened and the network interface was available for packet capture.

### Verification

Wireshark 4.2.2 was successfully launched on the Linux virtual machine. The network interface `enp0s3` was available for packet capture, confirming that the required packet-capture permissions were correctly configured.

![Wireshark installation and interface](Screenshots/wireshark_installation_and_interface.png)
