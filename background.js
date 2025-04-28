chrome.action.onClicked.addListener(async (tab) => {
    if (tab && tab.url && tab.url.includes("youtube")) {
        const url = tab.url.includes("www")
            ? tab.url.replace("www", "music")
            : tab.url.replace("music", "www");

        chrome.tabs.update(tab.id, { url });
    }
});
