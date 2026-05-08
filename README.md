# Class 7.5 Week 8 Waffle-House-Homework

## Q & A

-Each bullet point can be between 1-5 sentences. You choose the amount of detail as long as I see that you understand it. 

-What is the difference between high availability and fault tolerance? Which is best to strive for? 

-Explain the difference between autoscaling and elasticity. What is vertical and horizontal autoscaling? Is one better? Are they feasible on prem? 

-Explain what the difference between managed and unmanaged instance groups is.

-Explain the different use cases for health checks used by applications (in instance groups) and health checks used by load balancers. Can they be the same? Are they different API calls? Should they be the same? 

-Explain in a few sentences what the 3 tier architecture is and how it relates to what you are learning.






## Runbook
-In the first few sentences (3 max) explain the end goal. 

-Add a section on prerequisites (what do I, as an engineer, need to have ready to make this happen?)

-Goal: a fully configured managed instance group

-Explain how to enable autoscaling and autohealing

-Explain how to verify that the instance group will manage instances across multiple zones

-Explain any other critical config explicitly 

-Remember this is for other engineers so no need to try to explain everything like I am a nontechnical person. Also keep in mind runbooks are not for learning but for executing something properly.  Keep it pretty high level. Use whatever amount of detail you feel is correct. 

-Test it by having a group mate use this runbook to accomplish the goal. They should be able to rely on it only to spin up a properly configured instance group. 


## Terraform

-Explain the mandatory (required) arguments for a VM in terraform 

-Explain how to output the internal and external IP addresses of the provisioned VM and how you figured this out 

-Choose 2 non-required arguments and give an explanation for both (do not copy and paste the reference material) 

-Explain how you would figure out the correct format for creating a VM with the “centOS stream 10” image (the specific image is up to you). 

-Explain the difference between the “name” argument and the computed “id” and “self_link” attributes 

