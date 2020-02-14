# Flutter Recaptcha

A Flutter plugin for Google ReCaptcha powered by software Incubator.

## Getting Started

This plugin requires `Webview` to use Google ReCaptcha.
This plugin only supports **Google ReCAPTCHA V2** (v1 & v3 not supported)

Obtain your own key & secret here: https://www.google.com/recaptcha

By default plugin uses https://software-incubator.github.io/flutter_recaptcha/ webpage for ReCaptcha rendering. If you would like to stay with this default, add software-incubator.github.io to allowed domains. For using your own page, specify pluginURL parameter.


Put `RecaptchaV2` widget into your widget tree (Usually inside `Stack` widget), **make sure it's placed on top of the tree and block all the behind interactions**:

```
RecaptchaV2Controller recaptchaV2Controller = RecaptchaV2Controller();
...
RecaptchaV2(
	apiKey: "YOUR_API_KEY", // for enabling the reCaptcha
	controller: recaptchaV2Controller,
	response: (token) {
		setState(() {
		    // Can send this token to server for verification
		    print(token)
		});
	},
),
```

The `RecaptchaV2` widget is hidden by default, you need to attach the `RecaptchaV2Controller` and call `show()` method when needed. Like this:
```
recaptchaV2Controller.show();
```

Manually hide it:
```
recaptchaV2Controller.hide();
```