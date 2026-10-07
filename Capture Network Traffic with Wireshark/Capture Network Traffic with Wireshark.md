# Task 8 – Network Traffic Analysis with Wireshark

## 1. Introduction

Wireshark is a network protocol analyzer used to capture and analyze network traffic. It allows cybersecurity professionals to inspect packets travelling across a network and identify protocols, connections, communication patterns, and potential security issues.

For this task, Wireshark was installed and used to capture live network traffic. The captured traffic was then analyzed using display filters such as HTTP, DNS, and TCP.

---

## 2. Installation of Wireshark

Wireshark was successfully installed and configured on the Linux system.

The appropriate network interface was selected for packet capture, and the necessary permissions were configured so that normal users could capture network traffic.

The Wireshark version used was:

**Wireshark 4.2.2**

---

## 3. Capturing Network Traffic

Network traffic was captured for more than two minutes while normal network activity was taking place.

The capture included different types of traffic, including:

* DNS traffic
* TCP traffic
* ICMP traffic
* HTTP/HTTPS-related traffic
* Other background network communication

The capture was saved as:

**wireshark_capture.pcap**

---

## 4. HTTP Traffic Analysis

The following Wireshark display filter was used:

```text
http
```

The HTTP filter displays packets associated with the Hypertext Transfer Protocol.

HTTP is an application-layer protocol used for transferring information between a client and a web server.

HTTP does not encrypt the information being transmitted. Therefore, sensitive information transmitted over HTTP can potentially be viewed by someone who is able to intercept the traffic.

Examples of information that may be exposed include:

* Web pages
* URLs
* Headers
* Cookies
* Form data
* Other transmitted information

---

## 5. DNS Traffic Analysis

The following filter was used:

```text
dns
```

DNS stands for **Domain Name System**.

DNS converts human-readable domain names such as:

```text
example.com
```

into IP addresses that computers can use to communicate with servers.

A typical DNS communication involves a client sending a DNS query and receiving a DNS response.

For example:

**DNS Query:**

```text
What is the IP address of example.com?
```

**DNS Response:**

```text
example.com → IP address
```

Wireshark makes it possible to inspect these DNS queries and responses and identify the domains being requested.

---

## 6. TCP Traffic Analysis

The following filter was used:

```text
tcp
```

TCP stands for **Transmission Control Protocol**.

TCP provides reliable communication between two devices. Before data is transferred, TCP establishes a connection using a process known as the **TCP three-way handshake**.

---

## 7. TCP Three-Way Handshake

The TCP three-way handshake consists of three main steps:

### Step 1 – SYN

The client sends a **SYN** packet to the server.

This requests the establishment of a TCP connection and contains an initial sequence number.

```text
Client → Server
SYN
```

### Step 2 – SYN-ACK

The server responds with a **SYN-ACK** packet.

This acknowledges the client's SYN and sends the server's own synchronization information.

```text
Server → Client
SYN + ACK
```

### Step 3 – ACK

The client sends an **ACK** packet back to the server.

This acknowledges the server's response and completes the TCP connection establishment.

```text
Client → Server
ACK
```

The complete process is:

```text
Client                  Server

   SYN  -------------------->

       <-------------------- SYN-ACK

   ACK  -------------------->

        Connection Established
```

The three-way handshake is important because it allows both devices to synchronize their sequence numbers and confirm that communication can take place.

---

## 8. Why the TCP Handshake Is Important in Cybersecurity

The TCP handshake is useful during network security investigations because it provides information about connections between hosts.

A cybersecurity analyst can use packet captures to identify:

* Source IP addresses
* Destination IP addresses
* Source ports
* Destination ports
* Connection attempts
* Successful connections
* Failed connections
* Unusual connection patterns

Large numbers of connection attempts can sometimes indicate scanning or other suspicious network activity.

---

## 9. HTTP vs HTTPS

### HTTP

HTTP stands for **Hypertext Transfer Protocol**.

HTTP normally operates without encryption. Information transmitted using HTTP can therefore potentially be intercepted and read.

### HTTPS

HTTPS stands for **Hypertext Transfer Protocol Secure**.

HTTPS uses encryption through TLS (Transport Layer Security) to protect communication between the client and server.

The main difference is:

| HTTP                                | HTTPS                           |
| ----------------------------------- | ------------------------------- |
| Not encrypted                       | Encrypted                       |
| Less secure                         | More secure                     |
| Usually uses port 80                | Usually uses port 443           |
| Data may be readable if intercepted | Data is protected by encryption |

HTTPS is therefore preferred when transmitting sensitive information such as passwords, payment information, personal information, and authentication data.

---

## 10. Identifying Unencrypted Traffic

Wireshark can be used to identify traffic that is not encrypted.

HTTP traffic is an example of unencrypted application-layer traffic. When HTTP communication is present, information contained in the packets may be readable directly within Wireshark.

This demonstrates why encrypted protocols such as HTTPS are important for protecting users and network communications.

---

## 11. Important Network Information Visible in Wireshark

Wireshark can provide information such as:

* Source IP address
* Destination IP address
* Source port
* Destination port
* Protocol
* Packet length
* TCP flags
* Sequence numbers
* Acknowledgement numbers
* Packet contents
* DNS queries and responses

This information is useful to security analysts when investigating network activity.

---

## 12. Security Applications of Wireshark

Wireshark can be used by cybersecurity professionals for:

1. **Network troubleshooting**
   Identifying communication problems and failed connections.

2. **Incident response**
   Investigating suspicious network traffic after a security incident.

3. **Threat hunting**
   Looking for unusual communication patterns.

4. **Malware analysis**
   Examining network communication generated by potentially malicious software.

5. **Protocol analysis**
   Understanding how different network protocols communicate.

6. **Detecting unencrypted communication**
   Identifying protocols that may expose information.

7. **Network reconnaissance analysis**
   Detecting unusual scanning and connection attempts.

---

# 13. Glossary

### Packet

A packet is a small unit of data transmitted across a network.

### Protocol

A protocol is a set of rules that determines how devices communicate.

### Port

A port is a logical communication endpoint used by network services and applications.

### Payload

The payload is the actual data carried inside a packet.

### TCP Handshake

The TCP handshake is the process used to establish a TCP connection between two devices.

### IP Address

An IP address identifies a device or network interface on an IP network.

### DNS

The Domain Name System translates domain names into IP addresses.

### HTTP

Hypertext Transfer Protocol is used to transfer web resources without providing encryption by itself.

### HTTPS

Hypertext Transfer Protocol Secure uses TLS encryption to protect web communication.

### TCP

Transmission Control Protocol provides reliable, connection-oriented communication.

---

# 14. Conclusion

This task demonstrated how Wireshark can be used to capture and analyze network traffic.

The analysis covered DNS, TCP, HTTP, and HTTPS-related concepts. The TCP three-way handshake was examined to understand how connections are established between network devices.

The task also demonstrated the security importance of encryption. Unencrypted HTTP traffic can expose information to an attacker who is capable of intercepting network traffic, while HTTPS protects communication through encryption.

Wireshark is therefore an important tool for cybersecurity professionals because it provides detailed visibility into network communication and can assist with troubleshooting, threat hunting, incident response, and security investigations.

