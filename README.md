# Waffle-House-Homework
Class 7.5 GCP Homework


## Q&A
Load Balancers:

-- How does load balancing contribute to Fault tolerance? What about high availability? 

A: Load balancing improves fault tolerance by adding an additional layer of possible failure without all traffic going to a faulty VM Instance thus creating down time. Load balancing maintaining uptime by directing internet traffic to a healthy VM instnace when another VM instance that became faulty degrades.

-- Do global load balancers decrease latency for end users? Why or why not? 

A: Global load balancers do decrease latency by directing the traffic to the nearest optimal server. An example would be like an Edge location in a remote area in the event that a typical zone would be slower to process the traffic.

-- What are LB health checks for? Do we always need them? Is a LB different from a reverse proxy? 

A: Health checks monitor the health of the backends instances acting kind of like an EKG for them. If the backend indicates that it has flat lined, it will transfer to one that is healthy. We always need health checks as you cannot create the load balancer without a health check. LBs and reverse Proxies are similar but they have their differences. LB are more focused on handling high-volume requests with lower security while reverse proxies have caching features in additon offering more security in comparison to LB. 

Source: https://docs.cloud.google.com/load-balancing/docs/firewall-rules

-- What are LB routing rules for? Give an example or two of them in use. 

Cloud Armor:
** What does cloud armor offer? 

A: A GCP security service that protects against DDos attacks on mulitple layers from 3 to 7. It can come pre-configured with an industry standard.


Cloud CDN: 
** What is a hydrator in the context of CDN? 

** What are POPs used for? 

** What kind of files are served with Cloud CDN? 

** What services can be used with cloud CDN for the source of content? 

** Does Cloud CDN help protect against any types of malicious actors or cyberattacks? Explain. 

** Should an enterprise always use cloud CDN? Why or why not? 
