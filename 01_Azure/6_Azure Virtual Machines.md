# Azure Virtual Machines

The service for creating virtual machines in Azure is called Azure Virtual Machines. You can use these VMs for anything you would use a physical server for. Since they are located in a Microsoft datacenter, you can only connect to them via the internet. To connect to a remote Linux machine, you use the Secure Shell (SSH) protocol. For Windows machines, you use the Remote Desktop Protocol (RDP).

To create a VM, you need to select an image. An image is like a blueprint for your machine and includes a template for the operating system.

VMs come in different sizes, each with varying amounts of vCPUs, RAM, data disks, max IOPS, temp storage, premium disk support, and price.

For the OS disk (the root volume), you can choose from Premium SSD, Standard SSD, and Standard HDD. You also have the option to add additional data disks.

You can optionally secure your VM with a NIC (Network Interface Card) network security group. It is recommended to configure network security groups at the subnet level whenever possible, but sometimes you may need an allow/deny rule specific to an instance, so the option is available. In any case, you can manage firewalls outside the VM, so you don't need to configure an additional firewall within the VM.

With Custom Data, you can pass a cloud-init script, config file, or other data during VM startup. This allows you to automatically configure servers without logging in yourself. User data is a newer version of Custom Data, and the main difference is that user data remains available throughout the lifespan of the VM.

The price of an Azure VM depends on the size, image, region, the number of minutes it is running, and the payment type you choose. Pay-as-you-go is the most expensive option but also the most flexible. Reserved Instances are cheaper, but you are committed to a reservation of 1 or 3 years. Spot instances are generally the cheapest, but their availability depends on the demand for VMs at that moment, so they are not always reliable.


## Key-terms



## Opdracht

Needed: Azure-cloud environment

Log in bij je Azure Console.

Create a VM with the following requirements:
- Ubuntu Server 20.04 LTS - Gen1
- Size: Standard_B1ls

Allowed inbound ports:
- HTTP (80)
- SSH (22)

OS Disk type: Standard SSD
Networking: defaults
Boot diagnostics are not neccesary

Custom data: (When creating the VM fill the follwing in the Custom data square)

- #!/bin/bash
- sudo su
- apt update
- apt install apache2 -y
- ufw allow 'Apache'
- systemctl enable apache2
- systemctl restart apache2

![VM created](/00_includes/Cloud/Opdracht%206/VM%20created.jpg)

![Created VM_Key](/00_includes/Cloud/Opdracht%206/Created%20VM_Key.jpg)

Check if the server is working:

After putting in all the above commands in the Custom data box and create the VM, you can go ahead and copy/paste the IP adress in the browser bar and check if the server works.

![server werkt](/00_includes/Cloud/Opdracht%206/server%20werkt.jpg)

Let op! Vergeet niet na de opdracht eerst screenshots te maken en daarna alles weer weg te gooien. Je kan elk onderdeel individueel verwijderen, of je kan in 1 keer de resource group verwijderen.

### Gebruikte bronnen

[https://portal.azure.com/#home]
[https://www.youtube.com/watch?v=lGnetEeOklw]


### Ervaren problemen

I didn't understand where to put in all the commands, simply because I was too stressed and wasn't reading information properly to follow the steps clearly.

### Resultaat
see screenshots