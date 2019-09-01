# Flutter Recaptchav2

A Flutter plugin for Google ReCaptcha V2 powered by software Incubator.

## Getting Started

This plugin requires `Webview` to use Google ReCaptcha.
This plugin only supports **Google ReCAPTCHA V2** (working on v3)

Obtain your own key & secret here: https://www.google.com/recaptcha
Add: https://software-incubator.github.io to sites allowed

Test your API KEY at: https://software-incubator.github.io/flutter_recaptcha?api_key=API_KEY

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

That's it!