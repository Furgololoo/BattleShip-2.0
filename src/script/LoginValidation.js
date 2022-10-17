.import "Color.js" as Colors

var name;
var ipAddress;
var port;
var button;

var bIsNameValid = false;
var bIsIPValid = false;
var bIsPortValid = false;

function setupLoginView(nameField, ipAddressField, portField, goBtn) {
    name = nameField
    ipAddress = ipAddressField
    port = portField
    button = goBtn
}

function checkValidationInNameField(text) {
    bIsNameValid = true;
    checkLoginValidation()
}

function checkValidationInIPField(text) {
    bIsIPValid = true;
    checkLoginValidation()
}

function checkValidationInPortField(text) {
    bIsPortValid = true;
    checkLoginValidation()
}

function checkLoginValidation() {
    if(bIsNameValid && bIsIPValid && bIsPortValid) {
        button.buttonBG = Colors.green()
        button.buttonOpacity = 0.5
    }
}
