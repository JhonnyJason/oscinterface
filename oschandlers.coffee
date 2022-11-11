############################################################
import *  as service from "./servicefunctions.js"
import { responseValidators as validate} from "./oscschemas.js"

############################################################
ok = true

############################################################
#region Chat Sites

############################################################
export addChatSite = (req) ->
    await service.addChatSite(req)
    return {ok:true}

############################################################
export getAllChatSites = (req) ->
    response = await service.getAllChatSites(req)

    try validate.getAllChatSites(response)
    catch err then throw new Error("Error: service.getAllChatSites - response format: #{err.message}")

    return response

############################################################
export removeChatSite = (req) ->
    await service.removeChatSite(req)
    return {ok:true}

#endregion

