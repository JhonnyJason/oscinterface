import { postData } from "thingy-network-base"

############################################################
export addChatSite = (sciURL, authCode, siteURL) ->
    requestObject = { authCode, siteURL }
    requestURL = sciURL+"/addChatSite"
    return postData(requestURL, requestObject)

export getAllChatSites = (sciURL, authCode) ->
    requestObject = { timestamp, nonce, signature }
    requestURL = sciURL+"/getAllChatSites"
    return postData(requestURL, requestObject)

export removeChatSite = (sciURL, authCode, siteURL) ->
    requestObject = { clientPublicKey, timestamp, nonce, signature }
    requestURL = sciURL+"/removeChatSite"
    return postData(requestURL, requestObject)

