# Incident report analysis

## Summary

The organization recently experienced a DDoS attack, compromising the internal network for two hours. The network services suddenly stopped due to an incoming flood of ICMP packets. This resulted in the interruption on the availability of normal internal networks to access network resources.To stop it incoming ICMP packets were blocked by the incident management team, stopping non-critical network services offline, and restoring the critical ones.The security event was then investigated, acknowledging that the Flood attack was perpetrated through the use of an unconfigured firewall. Therefore the organization network was overwhelmed with a DDoS attack.Some implementations were conducted to address this security event, with configuration on the firewall and monitoring software to check the network.

## Identify

A malicious actor had denied network activity with an ICMP flood attack. This interrupted the service of the internal network. The critical network services had to be fixed in order to be functional again making them accessible.

## Protect

The protection on the firewall was improved, defining a new rule to limit the flow of incoming ICMP packets. An IDS/IPS was also implemented to filter out ICMP traffic based on certain parameters.

## Detect

A source IP address verification was implemented on the firewall to check if there were any spoofed IP addresses on incoming ICMP packets. Also some network monitoring to ensure that abnormal traffic patterns are detected.

## Respond

In order to respond to future incidents, the cybersecurity team will isolate the systems affected to avoid further disruption. Through the use of the newer implementations, there’ll be network checks to ensure nothing goes undetected and future threat actors can’t compromise the networks in the same way. The restoration of critical networks and services will be effectuated. And all incidents will be escalated to the corresponding target.

## Recover

To recover from this kind of attack, the affected network services must be restored to their normal state. By stopping all non-critical ones the internal network traffic can be reduced.Once this has been managed, critical network services should be restored.When the ICMP packets have reached their end of time, the stopped services can be put back online and all functions can return to their normal state.

## Thought | Notes

The incident was managed with detail and attention. A good measure to prevent further issues would be trying to stay as informed as possible on probable threats. Some measures might need possible intervention soon as the malicious actor could try another way to interrupt the organization’s services.
