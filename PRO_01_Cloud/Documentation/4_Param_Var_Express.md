# Parameters, Variables and Expressions

Parameters and Variables are two Bicep features that can make your templates flexible and reusable. 

- A parameter lets you bring in values from outside the template file. For example, if someone is manually deploying the template by using the Azure CLI or Azure PowerShell, they'll be asked to provide values for each parameter. 

It's usually a good idea to use parameters for things that will change between each deployment, like:

The names of resources that need to be unique.
Locations into which to deploy the resources.
Settings that affect the pricing of resources, like their SKUs, pricing tiers, and instance counts.
Credentials and information needed to access other systems that aren't defined in the template.

- A variable is defined and set within the template. Variables let you store important information in one place and refer to it throughout the template without having to copy and paste it.

Variables are usually a good option when you'll use the same values for each deployment, but you want to make a value reusable within the template. Or, when you want to use expressions to create a complex value. You can also use variables for the names of resources that don't need unique names.

- Expressions
When you're writing templates, you often don't want to hard-code values, or even ask for them to be specified in a parameter. Instead, you want to discover values when the template runs. For example, you probably want to deploy all of the resources in a template into a single Azure region: the region where you've created the resource group. Or, you might want to automatically create a unique name for a resource based on a particular naming strategy your company uses.

Expressions in Bicep are a powerful feature that helps you handle all sorts of interesting scenarios. Let's take a look at a few places where you can use expressions in a Bicep template.