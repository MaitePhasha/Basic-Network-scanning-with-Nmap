# Research Report: Common Network Security Threats

## Introduction

Network security threats are a major concern for organizations because modern businesses depend heavily on interconnected computers, networks, applications, and online services. Attackers can exploit weaknesses in network communication to disrupt services, intercept sensitive information, impersonate legitimate systems, or redirect users to malicious destinations. Threats such as Denial-of-Service (DoS) and Distributed Denial-of-Service (DDoS) attacks, Man-in-the-Middle (MITM) attacks, IP spoofing, and DNS poisoning can affect the confidentiality, integrity, and availability of systems and information. Understanding how these attacks work and how to prevent them is therefore an important part of maintaining secure and reliable networks.

## What is DoS?
Denial of Service (DoS) means an attacker tries to make a service unavailable to legitimate users.
Imagine a small restaurant with 10 tables.
One person keeps calling the restaurant and reserving all 10 tables, repeatedly.
Real customers can't get a table.
That's essentially the idea behind DoS.

## What is DDoS?
Distributed Denial of Service is the same goal, but the traffic comes from many systems.
The machines sending the traffic may be compromised devices in a botnet.
CISA explains that DoS generally uses a single source, while DDoS uses multiple sources, often compromised computers coordinated as a botnet.
MITRE ATT&CK classifies Network Denial of Service as T1498, an impact technique.

## Why is DDoS difficult?
Because you can't simply say:
"Block this attacker's IP."
There could be thousands of source IP addresses.
And some attacks use IP spoofing, making the apparent source even less trustworthy. CISA specifically notes that spoofed source addresses can make DDoS traffic harder to trace and block.

### Real-World Example

A well-known example of a large-scale DDoS attack was the 2016 Mirai botnet attack against Dyn, a company that provided DNS-related services. The Mirai malware compromised vulnerable Internet of Things (IoT) devices and used them as part of a botnet. The botnet was then used to generate a large distributed attack against Dyn. Because Dyn provided services used by many major internet companies, the attack contributed to access problems for a number of popular websites and online services.

The incident demonstrated how insecure IoT devices can be recruited into large botnets and used to disrupt important internet infrastructure.

### Impact

DDoS attacks can have significant operational and financial consequences for organizations. When a service becomes unavailable, legitimate customers may be unable to access websites, applications, or online services. Organizations can experience lost revenue, reduced productivity, increased incident-response costs, and damage to their reputation. Large attacks can also affect third-party services when organizations depend on shared infrastructure or service providers.

### Mitigation Strategies

1. **Rate limiting:** Organizations can limit the number of requests or connections accepted from a source within a specific period. This can help reduce certain forms of excessive or malicious traffic.

2. **DDoS protection and traffic filtering:** Organizations can use specialized DDoS protection services, firewalls, web application firewalls, or traffic-scrubbing services to identify and filter malicious traffic before it reaches critical systems.

3. **Upstream filtering:** Internet service providers and upstream network providers can filter or redirect malicious traffic before it reaches the organization's network. This is particularly useful for large attacks that could otherwise overwhelm the organization's internet connection.

## What is a MITM attack?

MITM = Man-in-the-Middle.
An attacker gets themselves between two parties that are communicating so that they can potentially observe, intercept, or manipulate the communication.
Normally, the communication is supposed to happen directly between you and the website.
With MITM, the attacker is trying to become the "middle."

### Why is this dangerous?

Imagine you're using online banking.
You send:
Username: Maite
Password: ********
If an attacker can successfully intercept that communication, they might potentially obtain sensitive information.
But MITM isn't only about reading traffic, the attacker may also try to modify traffic.

## Real-world example: DigiNotar

DigiNotar was compromised, and fraudulent certificates were issued.
That was serious because certificates can be used to make a malicious system appear to be a legitimate website.
This could support attacks where an attacker attempts to impersonate a legitimate site and intercept encrypted communications.
The incident became a major example of why certificate trust and validation matter for preventing MITM attacks.

## Impact of MITM

### A successful MITM attack can affect:

#### Confidentiality
The attacker may obtain sensitive information such as:

usernames
passwords
session information
messages
other sensitive data

#### Integrity
The attacker may attempt to modify communications.

#### Authentication
The attacker may attempt to impersonate a legitimate service or system.

#### Financial loss
If credentials or transactions are compromised, victims or organizations may suffer financial damage.

## Mitigation

1. Use HTTPS/TLS
Encrypt communications between clients and servers. This makes intercepted traffic much harder to read or modify.
2. Proper certificate validation
Don't blindly trust certificates. A client should verify that the certificate is valid and belongs to the intended service.
This is one of the reasons browsers warn you when something is wrong with a website's certificate.
For example: "Your connection is not private." That warning shouldn't simply be ignored.
3. Multi-Factor Authentication (MFA)
MFA doesn't prevent an attacker from sitting between two network devices, but it can reduce the damage if credentials are stolen.

## IP Spoofing

### How the Attack Works

IP spoofing occurs when an attacker falsifies the source IP address contained in network packets so that the traffic appears to originate from another system or address. The attacker does not necessarily have control of the address being impersonated; instead, the source information in the packet is manipulated.

IP spoofing can be used for several purposes, including attempting to bypass poorly configured access controls, disguising the true source of malicious traffic, or supporting reflection and amplification attacks. In a reflection attack, an attacker can send requests with a spoofed source address belonging to the intended victim. The responding systems then send their responses toward the victim, potentially increasing the amount of traffic directed at the target.

### Real-World Example

IP spoofing has been widely associated with reflection and amplification attacks. In these attacks, attackers can forge the source IP address of packets so that responses from third-party systems are directed toward the victim. UDP-based services can be abused for this purpose because UDP does not require the same connection establishment process as TCP.

Large-scale DDoS attacks have used spoofed source addresses together with vulnerable or exposed network services to generate traffic toward victims.

### Impact

IP spoofing can make it more difficult to determine the true source of malicious network traffic. It can also be used to support DDoS reflection and amplification attacks, potentially causing large amounts of unwanted traffic to reach a victim. In some environments, poorly configured security controls that rely heavily on source IP addresses may also be vulnerable to spoofed traffic.

### Mitigation Strategies

1. **Ingress filtering:** Network providers and administrators can filter incoming packets that contain source addresses that should not legitimately originate from the incoming interface. This helps prevent spoofed traffic from entering networks.

2. **Egress filtering:** Organizations can filter outgoing traffic to prevent internal systems from sending packets with forged or unauthorized source addresses. This can help prevent compromised systems from participating in spoofing-based attacks.

3. **DDoS and reflection protection:** Organizations can use DDoS protection, traffic filtering, rate limiting, and appropriate configuration of network services to reduce the impact of reflection and amplification attacks that rely on spoofed addresses.

## 4. DNS Poisoning/Spoofing

### How the Attack Works

The Domain Name System (DNS) translates human-readable domain names into IP addresses so that systems can locate services on a network or the internet. DNS poisoning or spoofing occurs when an attacker causes false DNS information to be accepted, potentially causing a legitimate domain name to resolve to an attacker-controlled or otherwise incorrect IP address.

One form of this attack is DNS cache poisoning, where false DNS information is stored in the cache of a recursive DNS resolver. When users subsequently request the affected domain, the resolver may return the incorrect IP address from its cache. This can redirect users to malicious infrastructure even though they entered the legitimate domain name.

DNS attacks can therefore affect the integrity of name resolution and can potentially be used to redirect users to malicious websites, support phishing attacks, or facilitate further attacks such as credential theft and Man-in-the-Middle attacks.

### Real-World Example

A notable real-world example is the Sea Turtle DNS hijacking campaign documented by Cisco Talos. The campaign involved attackers compromising DNS-related infrastructure and manipulating DNS information to redirect victims toward attacker-controlled systems. The incident demonstrated how compromising DNS infrastructure can allow attackers to redirect traffic while victims continue to use legitimate domain names.

### Impact

DNS poisoning and spoofing can redirect users from legitimate services to malicious destinations. This can result in credential theft, phishing, malware delivery, interception of sensitive information, and loss of trust in online services. Organizations can also experience reputational damage and operational disruption if their DNS infrastructure or domain resolution is compromised.

### Mitigation Strategies

1. **DNSSEC:** Organizations can deploy DNSSEC to provide cryptographic validation of DNS data and help protect the integrity and authenticity of DNS responses.

2. **Secure DNS administration:** DNS infrastructure should be securely configured and protected using strong authentication, Multi-Factor Authentication (MFA), access controls, software updates, and restricted administrative access.

3. **DNS monitoring and logging:** Organizations should monitor DNS activity and maintain logs to identify unexpected changes, suspicious queries, unusual DNS responses, or unauthorized modifications to DNS records.

## Comparison Table

| Threat | Attack Vector | Who Is at Risk? | Difficulty to Execute | Ease of Mitigation |
|---|---|---|---|---|
| DoS/DDoS | Flooding a target with excessive traffic or requests to exhaust its resources | Organizations, websites, online services, and network infrastructure | Medium to High | Medium |
| MITM | Intercepting or manipulating communication between two communicating parties | Network users, organizations, applications, and services | Medium to High | Medium |
| IP Spoofing | Forging the source IP address of network packets | Networks, servers, and services that rely on source addresses for trust or filtering | Medium | Medium |
| DNS Poisoning/Spoofing | Manipulating DNS information so that a domain resolves to an incorrect or malicious IP address | Internet users, organizations, and services that rely on DNS | Medium to High | Medium |

## Conclusion

Network security threats can affect the availability, confidentiality, and integrity of an organization's systems and information. DoS and DDoS attacks can disrupt services, MITM attacks can expose or manipulate communications, IP spoofing can be used to disguise the source of network traffic, and DNS poisoning can redirect users to unintended destinations.

Three key takeaways for a network administrator are:

1. **Protect availability:** Organizations should use appropriate traffic filtering, rate limiting, DDoS protection, and network monitoring to reduce the impact of denial-of-service attacks.

2. **Protect communication and authentication:** Secure protocols such as HTTPS/TLS, proper certificate validation, network segmentation, and Multi-Factor Authentication (MFA) can reduce the risk and impact of attacks that attempt to intercept or manipulate communications.

3. **Protect network infrastructure and monitor for abnormal activity:** Secure DNS administration, DNSSEC where appropriate, anti-spoofing controls, logging, and continuous network monitoring can help detect and prevent attempts to manipulate network traffic or redirect users.

## References

1. National Institute of Standards and Technology (NIST). "Secure Domain Name System (DNS) Deployment Guide." NIST Special Publication 800-81 Rev. 3. 2026. https://csrc.nist.gov/pubs/sp/800/81/r3/final

2. Cybersecurity and Infrastructure Security Agency (CISA). "Understanding and Responding to Distributed Denial-of-Service Attacks." https://www.cisa.gov/resources-tools/resources/understanding-and-responding-distributed-denial-service-attacks

3. Cybersecurity and Infrastructure Security Agency (CISA). "UDP-Based Amplification Attacks." https://www.cisa.gov/news-events/alerts/2014/01/17/udp-based-amplification-attacks

4. National Institute of Standards and Technology (NIST). "Advanced DDoS Mitigation Techniques." https://www.nist.gov/programs-projects/advanced-ddos-mitigation-techniques

5. MITRE ATT&CK. "Adversary-in-the-Middle (T1557)." https://attack.mitre.org/techniques/T1557/

6. MITRE ATT&CK. "Network Denial of Service (T1498)." https://attack.mitre.org/techniques/T1498/

7. Cisco Talos. "Sea Turtle Keeps on Swimming." https://blog.talosintelligence.com/sea-turtle-keeps-on-swimming/

8. Microsoft. "Microsoft Security Advisory 2607712: Fraudulent Digital Certificates Could Allow Spoofing." https://learn.microsoft.com/en-us/security-updates/securityadvisories/2011/2607712

9. U.S. Department of Justice. "Individual Pleads Guilty to Participating in Internet of Things Cyberattack in 2016." https://www.justice.gov/archives/opa/pr/individual-pleads-guilty-participating-internet-things-cyberattack-2016
