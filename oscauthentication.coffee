############################################################
import { sessionAuthentication } from "./authenticationfunctions.js"

############################################################
## Master Functions
############################################################
export addChatSite = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export getAllChatSites = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export removeChatSite = (req) -> await sessionAuthentication(req.path, req.body)
