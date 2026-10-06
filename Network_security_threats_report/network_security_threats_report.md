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
Impact of MITM

##A successful MITM attack can affect:

### Confidentiality
The attacker may obtain sensitive information such as:

usernames
passwords
session information
messages
other sensitive data

### Integrity
The attacker may attempt to modify communications.

###Authentication
The attacker may attempt to impersonate a legitimate service or system.

### Financial loss
If credentials or transactions are compromised, victims or organizations may suffer financial damage.

## Impact of MITM

1. Use HTTPS/TLS
Encrypt communications between clients and servers. This makes intercepted traffic much harder to read or modify.
2. Proper certificate validation
3. Don't blindly trust certificates. A client should verify that the certificate is valid and belongs to the intended service.
This is one of the reasons browsers warn you when something is wrong with a website's certificate.
For example: "Your connection is not private." That warning shouldn't simply be ignored.
