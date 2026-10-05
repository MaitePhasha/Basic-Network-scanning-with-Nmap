# 1. DoS vs DDoS

## What is DoS?
Denial of Service (DoS) means an attacker tries to make a service unavailable to legitimate users.
Imagine a small restaurant with 10 tables.
One person keeps calling the restaurant and reserving all 10 tables, repeatedly.
Real customers can't get a table.
That's essentially the idea behind DoS.

## DDoS?
Distributed Denial of Service is the same goal, but the traffic comes from many systems.
The machines sending the traffic may be compromised devices in a botnet.
CISA explains that DoS generally uses a single source, while DDoS uses multiple sources, often compromised computers coordinated as a botnet.
MITRE ATT&CK classifies Network Denial of Service as T1498, an impact technique.

## Why is DDoS difficult?
Because you can't simply say:
"Block this attacker's IP."
There could be thousands of source IP addresses.
And some attacks use IP spoofing, making the apparent source even less trustworthy. CISA specifically notes that spoofed source addresses can make DDoS traffic harder to trace and block.
