**Challenge #1**
A 3-tier environment is a common setup. Use a tool of your choosing/familiarity create these resources on a cloud environment (Azure/AWS/GCP). Please remember we will not be judged on the outcome but more focusing on the approach, style and reproducibility.

Answer : 

In a 3-tier environment, we have:

Web Tier Template (web-tier.json):
App Service Plan
App Service
Network configurations (if required)
Application Settings (e.g., connection strings)

Application Tier Template (app-tier.json):
Virtual Network
Virtual Machines (or other compute resources)
Necessary software installations and configurations
Network Security Groups (NSGs)
Application deployment (if applicable)

Database Tier Template (db-tier.json):
SQL Server (or any other database service)
Databases
Firewall rules for secure access

Use Azure CLI, PowerShell, or Azure Portal to deploy the templates.

**Challenge #2**
We need to write code that will query the meta data of an instance within AWS or Azure or GCP and provide a json formatted output. The choice of language and implementation is up to you.

Answer :

PowerShell script that queries the instance metadata within an Azure virtual machine and outputs the result in JSON format

**Challenge #3**
We have a nested object. We would like a function where you pass in the object and a key and get back the value.
The choice of language and implementation is up to you.

Answer :

PowerShell script that defines a function called GetValueFromNestedObject which takes an object and a key as input, and returns the corresponding value from the nested object.
