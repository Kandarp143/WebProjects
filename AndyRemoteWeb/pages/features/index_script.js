var lastInteraction = 1;
var lastHeadInteraction = 1;
var lastIndex = -1;
var lastScreen = -1;

function load() {
    hideDiv("content");
    resetNavigation();
    window.setTimeout("fadeInScreen('content')", 500);
    window.setTimeout("arrange()", 500);
}

function arrange() {
    try {
        var size = getSize();
        var x = size[0];
        var y = size[1];
        var offset = 80 + ((y - 75 - 60) / 2);
        offset = offset - (document.getElementById("content").offsetHeight / 2);
        document.getElementById("content").style.top = offset + "px";
        if (x < 1140 || y < 770) {
        	document.getElementById("sense").style.display = "none";
        } else {
        	document.getElementById("sense").style.display = "block";
        }
    } catch (ex) {

    }
}

function navigate(url) {
    top.location.href = url;
}

function setTitle(title) {
    if (title != "") {
        lastHeadInteraction = 0;
        document.getElementById("header_title").innerHTML = title;
        fadeInDiv("header_title");
    } else {
        lastHeadInteraction = getTimeNow();
        window.setTimeout("resetTitle();", 1500);
    }
}

function resetTitle() {
    if (getTimeNow() > (lastHeadInteraction + 1400) && lastHeadInteraction != 0) {
        setTitle("Remote Control Collection");
    }
}

function navActive() {
    lastInteraction = 0;
}

function navOver(divid) {
    lastInteraction = 0;
    var icon = document.getElementById(divid);
    var position = controls.indexOf(divid);
    navItem(position);
}

function navOut() {
    console.log("navOut");
    lastInteraction = getTimeNow();
    window.setTimeout("resetNavigation();", 5000);
}

function resetNavigation() {
    if (getTimeNow() > (lastInteraction + 5900) && lastInteraction != 0) {
        navNext();
    }
}

function navNext() {
    var nextIndex = lastIndex + 1;
    if (nextIndex >= controls.length) {
        nextIndex = 0;
    }
    window.setTimeout("resetNavigation();", 6000);
    navItem(nextIndex);
}

function loadScreen(position) {
    hideScreens();
    showScreen(position);
}

function toggleDiv(divid) {
    var div = document.getElementById(divid);
    if (div.style.display == "none") {
        div.style.display = "block";
    } else {
        div.style.display = "none";
    }
}

function fadeInDiv(div) {
    try {
        $('#' + div).hide().fadeIn('slow');
        //$('#' + div).slideUp('slow');
    } catch (ex) {
        // No jQuery? IDC!
        document.getElementById(div).style.display = "block";
    }
}

function setOpacity(div, opacity) {
    document.getElementById(div).style.opacity = opacity;   
}

function fadeInScreen(div) {
    try {
        $('#' + div).hide().fadeIn(1000);
        //$('#' + div).slideUp('slow');
    } catch (ex) {
        // No jQuery? IDC!
        document.getElementById(div).style.display = "block";
    }
}

function hideDiv(div) {
    try {
        $('#' + div).hide();
    } catch (ex) {
        // No jQuery? IDC!
        document.getElementById(div).style.display = "none";
    }
}

function getTimeNow() {
    var date = new Date()
    return date.getTime();
}

function getSrc(position) {
    var src = document.URL.substr(0, document.URL.lastIndexOf("/"));
    src = src + "/files/screen_" + position + ".png";
    return src;
}

function getSize() {
    var myWidth = 0, myHeight = 0;
    if ( typeof (window.innerWidth ) == 'number') {
        //Non-IE
        myWidth = window.innerWidth;
        myHeight = window.innerHeight;
    } else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight )) {
        //IE 6+ in 'standards compliant mode'
        myWidth = document.documentElement.clientWidth;
        myHeight = document.documentElement.clientHeight;
    } else if (document.body && (document.body.clientWidth || document.body.clientHeight )) {
        //IE 4 compatible
        myWidth = document.body.clientWidth;
        myHeight = document.body.clientHeight;
    }
    return [myWidth, myHeight];
}

var isMobile = {
    Android : function() {
        if (navigator.userAgent.match(/Android/i)) {
            if (navigator.userAgent.match(/mobile/i)) {
                // Android Smartphone
                return true;
            } else {
                // Android Tablet
                //TODO: Check size
                return false;
            }
        } else {
            return false;
        }
    },
    BlackBerry : function() {
        return navigator.userAgent.match(/BlackBerry/i) ? true : false;
    },
    iOS : function() {
        return navigator.userAgent.match(/iPhone|iPod/i) ? true : false;
    },
    Windows : function() {
        return navigator.userAgent.match(/IEMobile/i) ? true : false;
    },
    any : function() {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Windows());
    }
};

window.onresize = function(event) {
    arrange();
}