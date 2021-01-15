"use strict";

var query = ".pa-global-class, .ad-panel, #adblocker-notice, .icADSlot, [id^='ad_is']";

function hide() {
    var results = document.querySelectorAll(query);
    for (let i = 0; i < results.length; i++) {
        results[i].style.display = 'none';
    }
}

hide();

setInterval(hide, 1000);