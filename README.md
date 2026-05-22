# Week 10
This week's homework is focused on creating a functional Load Balancer utilizing structured sequential terraform files. There is also a Q & A in regards to the following: DNS, SSL/TLS, Load Balancers, Cloud DNS ...

# Q&A



## DNS and SSL/TLS
### Explain what the traceroute and dig commands do. Compare and contrast.

#### - The trace command tracks the path of the packets from the end user to its destination. 

### What are the 3 or 4 most common DNS records and what are their use cases? 
#### - A Record - Resolve/translate domain names to IPv4 IP addresses. 
#### - AAAA Record - Resolve/translate domain names to IPv6 IP addresses.
#### - CNAME - Resolve/translate a domain into an alias domain name. Example: www.bing.com > bing.com
#### - MX (mail exchanger) - Pinpoints the server that emails should be delivered to for that domain name. 


### Give an overview of the steps in a TLS handshake. 
#### - The PC's browser asks the website to identify itself.The web server replies back with a copy of its TLS handshake.The PC checks the certificate to verify before deciding if it will trust the web browser. After trusing the web browser, the PC messages the web server to let it know that it trusts it and the web server acknowledges the trust relationship between them. A session is opened between them before encryption begins in order to start transferring data.

### How does an SSL/TLS cert know what domain it belongs to?
#### - 

### What is a certificate authority? 
#### - 



## Load Balancers:


### How do application load balancers in GCP offload (decrypt) SSL? What part of the load balancer does this? 
#### - 

### Are there use cases to have in flight encryption from the backend service to the backend itself? 
#### - 



## Cloud Domain/DNS: 

### Can multiple domains end up pointing to the same LB? 
#### - 

### In the context of Cloud DNS, what are zones?
#### - 
