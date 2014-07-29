# Preamble

There are a few things to note:

* The majority of the application specific code will be common for all guides in this project.  You can find that code in the 'Common' group.
* There are 3 targets (one per guide):
  * 1. Integrate SOS
  * 2. Basic Customization
  * 3. Advanced Customization
* The `SOSApplication` class will be implemented separately for each guide (Target), but each guide builds on the previous one so code will be moved, and in one place.
* New code for each guide will be commented.

# Getting Started

* cd to wherever you want this project to live...
* ``git clone git@github.com:goinstant/sos-guides``
* ``cd sos-guides``
* open the Podfile with your text editor of choice...
* update the version of SOS from the following line:
  * ``pod 'SOS', ‘0.4.7’``
* to the most recent version number, found here:
  * https://github.com/goinstant/pods-specs-public/tree/master/SOS
* install the necessary pods and create the workspace file:
  * ``pod install``
* ```open SOSExamples.xcworkspace```

# Setup 

You'll need to customize the entire application to use your credentials:
  * Open the `SOSSettings.plist` file
  * Change the value of the 3 keys under the root key:
    * `Account` - this is your GoInstant account
    * `Application` - this is the GoInstant application, by default this is usually `sos`
    * `Email` - this is the email address which identifies the customer initiating an SOS session.

# Guide 1 - Integrate SOS

###### Ensure you've got the '1. Integrate SOS' target selected in Xcode

In this guide you'll be setting up a basic implementation of SOS in our demo application.

# Guide 2 - Basic Customization

###### Ensure you've got the '2. Customize (Basic)' target selected in Xcode

In this guide we will be customizing some of the default SOS behavior.
As the name of the guide suggests this is basic customization restricted to setting a few properties.
The SOSUIComponents class provides access to toggle/customize most UI behavior.
The SOSScreenAnnotations class provides the ability to modify properties related to line drawing.

# Guide 3 - Advanced Customization

###### Ensure you've got the '3. Customize (Advanced)' target selected in Xcode

In the previous guide we changed some UI properties to customize some of the SOS experience for the application.
In this guide we'll be disabling most of the default UI which SOS provides, and we will customize the general behavior of SOS.

