document.querySelectorAll(".pa-global-class, .ad-panel, #adblocker-notice, .icADSlot, [id^='ad_is']").forEach(function (node) {
    node.style.display = 'none'
});

setInterval(function () {
    document.querySelectorAll(".pa-global-class, .ad-panel, #adblocker-notice, .icADSlot, [id^='ad_is']")
    .forEach(function (node) {
            node.style.display = 'none'
    })
}, 1000);