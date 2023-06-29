# Azure Disk Storage

Azure Disk Storage can be seen as a virtual hard drive in the cloud. A disk can be an OS disk (where the operating system is installed) or a Data Disk (comparable to an external hard drive). You have a choice between Managed Disks and Unmanaged Disks. Unmanaged Disks are cheaper, but they require a Storage Account (and you have to manage the disk yourself). Managed Data Disks can be shared between multiple VMs, but this is a relatively new feature and there are some considerations involved.

Backups of a Managed Disk can be created using Incremental Snapshots, which only store the changes made since the last snapshot. For an Unmanaged Disk, you can only create a regular snapshot.

There are four types of managed disks. Generally, it can be said that higher performance results in higher costs:
source: https://docs.microsoft.com/en-us/azure/virtual-machines/disks-types

A disk can be encrypted for security purposes. Disks can be resized to become larger, but they cannot be made smaller.
If you want to use an external device (including a Data Disk) on Linux, you need to mount it first.



## Key-terms
[Schrijf hier een lijst met belangrijke termen met eventueel een korte uitleg.]

## Opdracht

Start 2 Linux VMs and ensure that you have SSH access to both of them.
Create an Azure Managed Disk and attach it to both VMs simultaneously.
On your first machine, create a file and place it on the Shared Disk.
Check on the second machine if you can read the file.
Take a snapshot of the disk and try creating a new Disk from it.
Mount this new Disk and view the file.


### Gebruikte bronnen
[Plaats hier de bronnen die je hebt gebruikt.]

### Ervaren problemen
[Geef een korte beschrijving van de problemen waar je tegenaan bent gelopen met je gevonden oplossing.]

### Resultaat
[Omschrijf hoe je weet dat je opdracht gelukt is (gebruik screenshots waar nodig).]