import {
    NUMBER, STRING, STRINGHEX, STRINGHEX32, STRINGHEX64, STRINGHEX128, BOOLEAN, ARRAY, NUMBERORNULL, OBJECT, validate
} from "thingy-schema-validate"


############################################################
#region Arguments

############################################################
## Master Functions

addChatSiteArguments = {
    authCode: STRINGHEX64
    siteURL: STRING
}
############################################################
getAllChatSitesArguments = {
    authCode: STRINGHEX64
}
############################################################
removeChatSiteArguments = {
    authCode: STRINGHEX64
    siteURL: STRING
}

#endregion

############################################################
#region Responses

############################################################
getAllChatSitesResponse = {
    chatSites: ARRAY
}

#endregion


############################################################
export responseValidators = {
    ## Chat Sites
    addChatSite: -> true
    getAllChatSites: (response) -> validate(response, getAllChatSitesResponse)
    removeChatSite: -> true
}

export argumentValidators = {
    ## Chat Sites
    addChatSite: (args) -> validate(args, addChatSiteArguments)
    getAllChatSites: (args) -> validate(args, getAllChatSitesArguments)
    removeChatSite: (args) -> validate(args, removeChatSiteArguments)
}