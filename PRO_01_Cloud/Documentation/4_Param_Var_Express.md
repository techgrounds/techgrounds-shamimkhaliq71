# Parameters, Variables and Expressions

Parameters and Variables are two Bicep features that can make your templates flexible and reusable. 

- A parameter lets you bring in values from outside the template file. 
With parameters, you can provide information to a Bicep template at deployment time. You can make a Bicep template flexible and reusable by declaring parameters within your template.

It's usually a good idea to use parameters for things that will change between each deployment, like:

1. The names of resources that need to be unique.
2. Locations into which to deploy the resources.
3. Settings that affect the pricing of resources, like their SKUs, pricing tiers, and instance counts.
4. Credentials and information needed to access other systems that aren't defined in the template.

*In a Bicep template, you declare a parameter by using the param keyword. You can put these declarations anywhere in the template file, although it's usually a good idea to put them at the top of the file so your Bicep code is easy to read.*

Here's how you declare a parameter:

*param environmentName string*

Understand parameter types

When you declare a parameter, you need to tell Bicep what type of information the parameter will contain. Bicep will ensure that the value assigned to the parameter is compatible with the parameter type.

Parameters in Bicep can be one of the following types:

1. string, which lets you enter arbitrary text.
2. int, which lets you enter a number.
3. bool, which represents a Boolean (true or false) value.
4. object and array, which represent structured data and lists.


- A variable is defined and set within the template. Variables let you store important information in one place and refer to it throughout the template without having to copy and paste it.

Variables are usually a good option when you'll use the same values for each deployment, but you want to make a value reusable within the template. Or, when you want to use expressions to create a complex value. You can also use variables for the names of resources that don't need unique names.

- Expressions
When you're writing templates, you often don't want to hard-code values, or even ask for them to be specified in a parameter. Instead, you want to discover values when the template runs. For example, you probably want to deploy all of the resources in a template into a single Azure region: the region where you've created the resource group. Or, you might want to automatically create a unique name for a resource based on a particular naming strategy your company uses.

Expressions in Bicep are a powerful feature that help you handle all sorts of interesting scenarios. 