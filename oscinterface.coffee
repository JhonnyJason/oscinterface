import { postData } from "thingy-network-base"

############################################################
export addChatSite = (sciURL, authCode, siteURL) ->
    requestObject = { authCode, siteURL }
    requestURL = sciURL+"/addChatSite"
    return postData(requestURL, requestObject)

export getAllChatSites = (sciURL, authCode) ->
    requestObject = { authCode }
    requestURL = sciURL+"/getAllChatSites"
    return postData(requestURL, requestObject)

export removeChatSite = (sciURL, authCode, siteURL) ->
    requestObject = { authCode, siteURL }
    requestURL = sciURL+"/removeChatSite"
    return postData(requestURL, requestObject)

