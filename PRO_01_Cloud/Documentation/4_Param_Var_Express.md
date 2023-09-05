# Parameters, Variables and Expressions

These are Bicep features that can make your templates flexible and reusable. 

# Parameters

A parameter lets you bring in values from outside the template file. 
With parameters, you can provide information to a Bicep template at deployment time. You can make a Bicep template flexible and reusable by declaring parameters within your template.

It's usually a good idea to use parameters for things that will change between each deployment, like:

1. The names of resources that need to be unique.
2. Locations into which to deploy the resources.
3. Settings that affect the pricing of resources, like their SKUs, pricing tiers, and instance counts.
4. Credentials and information needed to access other systems that aren't defined in the template.

*In a Bicep template, you declare a parameter by using the param keyword. You can put these declarations anywhere in the template file, although it's usually a good idea to put them at the top of the file so your Bicep code is easy to read.*

Here are some examples on how you declare a parameter:

*param environmentType string*
*param location strin = (default value) 'westeurope'* 
*param storageAccountName string = default value*
*param storageAccountName string = 'lily1${uniqueString(resourceGroup().id)}'*

You can create several parameters, and they use a mixture of types. You're defining default values for each parameter. Some of the default values include string interpolation and the uniqueString() function.

Tip

The uniqueString() function is useful for creating globally unique resource names. It returns a string that's the same on every deployment to the same resource group, but different when you deploy to different resource groups or subscriptions.


# Understand parameter types

When you declare a parameter, you need to tell Bicep what type of information the parameter will contain. Bicep will ensure that the value assigned to the parameter is compatible with the parameter type.

Parameters in Bicep can be one of the following types:

1. string, which lets you enter arbitrary text.
2. int, which lets you enter a number.
3. bool, which represents a Boolean (true or false) value.
4. object and array, which represent structured data and lists.

# Add parameter descriptions

In the main.bicep file in Visual Studio Code, add the @description decorator directly above every parameter that you created in the previous task. 
The parameters should look similar to this example:

@description('The name of the environment. This must be dev, test, or prod.')
param environmentName string = 'dev'

@description('The unique name of the solution. This is used to ensure that resource names are unique.')
param solutionName string = 'toyhr${uniqueString(resourceGroup().id)}'

@description('The number of App Service plan instances.')
param appServicePlanInstanceCount int = 1

@description('The name and tier of the App Service plan SKU.')
param appServicePlanSku object = {
  name: 'F1'
  tier: 'Free'
}

@description('The Azure region into which the resources should be deployed.')
param location string = 'westus3'

# Limit input values

Example:

Your company will deploy the HR application to three environments: dev, test, and prod. You'll limit the environmentName parameter to only allow those three values.

In the main.bicep file in Visual Studio Code, find the environmentName parameter. Insert an *@allowed decorator* underneath its @description decorator. After you're finished, the parameter should look like this example:

@description('The name of the environment. This must be dev, test, or prod.')
@allowed([
  'dev'
  'test'
  'prod'
])
param environmentName string = 'dev'

Notice that you're limiting the parameter value for environmentName parameter to only dev, test, and prod. If more environments are added in the future, you'll need to update this list.

# Limit input lengths

Your solutionName parameter is used to generate the names of resources. You want to enforce a minimum length of 5 characters and a maximum length of 30 characters.

In the main.bicep file in Visual Studio Code, find the solutionName parameter. Add @minLength and @maxLength decorators underneath the @description decorator. 
After you're finished, the parameter should look like this example:

@description('The unique name of the solution. This is used to ensure that resource names are unique.')
@minLength(5)
@maxLength(30)
param solutionName string = 'toyhr${uniqueString(resourceGroup().id)}'

# Limit numeric values

Next, you'll ensure that the appServicePlanInstanceCount parameter only allows values between 1 and 10.

In the main.bicep file in Visual Studio Code, find the appServicePlanInstanceCount parameter. Add @minValue and @maxValue decorators underneath the @description decorator. 
After you're finished, the parameter should look like this example:

@description('The number of App Service plan instances.')
@minValue(1)
@maxValue(10)
param appServicePlanInstanceCount int = 1


# Variables

A variable is defined and set within the template. Variables let you store important information in one place and refer to it throughout the template without having to copy and paste it.

Variables are usually a good option when you'll use the same values for each deployment, but you want to make a value reusable within the template. Or, when you want to use expressions to create a complex value. You can also use variables for the names of resources that don't need unique names.

Here are some examples on how you declare a variable:

*var appServicePlanName = 'toy-product-launch-plan'*
*var appServicePlanSkuName = (environmentType == 'prod') ? 'P2v3' : 'F1'*

# Expressions

When you're writing templates, you often don't want to hard-code values, or even ask for them to be specified in a parameter. Instead, you want to discover values when the template runs. For example, you probably want to deploy all of the resources in a template into a single Azure region: the region where you've created the resource group. Or, you might want to automatically create a unique name for a resource based on a particular naming strategy your company uses.

Expressions in Bicep are a powerful feature that help you handle all sorts of interesting scenarios. 

# Resources

[https://learn.microsoft.com/en-gb/training/modules/build-reusable-bicep-templates-parameters/3-exercise-add-parameters-with-decorators?pivots=cli]

[https://learn.microsoft.com/en-us/shows/learn-live/use-bicep-deploy-azure-infrastructure-as-code-ep02-build-first-bicep-template?WT.mc_id=learnlive-20220315A]

[https://learn.microsoft.com/en-gb/shows/learn-live/use-bicep-deploy-azure-infrastructure-as-code-ep03-build-reusable-bicep-templates-by-using-parameters?WT.mc_id=learnlive-20220322A]
