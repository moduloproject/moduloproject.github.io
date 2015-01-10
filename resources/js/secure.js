// Redirection to https protocol
var host = "moduloteam.github.io";
if ((host == window.location.host) && (window.location.protocol != "https:"))
    window.location.protocol = "https";