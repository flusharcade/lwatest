# LWA Test App

Forked from https://github.com/grimlockrocks/login-with-amazon-swift3-sample-app

Instructions:
* Check-out the code, modify Bundle Identifier to something you like.
* Modify the entries under "info.plist" -> URL types, replace URL Schemes -> Item 0 and URL identifier with your Bundle Identifier.
Be sure that amzn- appears before your bundle id for url scheme this will enable the callback hook to open your app once you authenticate via browser.
eg. <your_bundle_identifier> -> amzn-<your_bundle_identifier>


* Set up a new security profile: https://developer.amazon.com/lwa/sp/overview.html, generate a new iOS API. 
* Modify the value of APIKey under "info.plist" to use your API key. 

# Setup iOS API Key

Visit:

https://developer.amazon.com/loginwithamazon/console/site/lwa/overview.html

Login in with your Amazon account and select Create a New Security Profile.

https://developer.amazon.com/docs/login-with-amazon/use-sdk-ios.html
