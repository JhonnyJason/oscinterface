############################################################
import * as h from "./oschandlers"
import { performance } from "node:perf_hooks"

############################################################
import { argumentValidators as validate } from "./oscschemas.js"
import *  as authentication from "./oscauthentication.js"

############################################################
#region Chat Sites

############################################################
export addChatSite = (req, res) ->
    start = performance.now()
    
    try validate.addChatSite(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.addChatSite(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.addChatSite(req.body.clientPublicKey, req.body.timestamp, req.body.signature)
    try response = await h.addChatSite(req)
    catch err then return res.send({error: "execution: #{err.message}"})

    end = performance.now()
    diffMS = end - start
    console.log("/addChatSite took #{diffMS}ms")
    
    return res.send(response)

############################################################
export getAllChatSites = (req, res) ->
    start = performance.now()
    
    try validate.getAllChatSites(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.getAllChatSites(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.getAllChatSites(req.body.timestamp, req.body.signature)
    try response = await h.getAllChatSites(req)
    catch err then return res.send({error: "execution: #{err.message}"})

    end = performance.now()
    diffMS = end - start
    console.log("/getAllChatSites took #{diffMS}ms")
    
    return res.send(response)

############################################################
export removeChatSite = (req, res) ->
    start = performance.now()
    
    try validate.removeChatSite(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.removeChatSite(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.removeChatSite(req.body.clientPublicKey, req.body.timestamp, req.body.signature)
    try response = await h.removeChatSite(req)
    catch err then return res.send({error: "execution: #{err.message}"})

    end = performance.now()
    diffMS = end - start
    console.log("/removeChatSite took #{diffMS}ms")
    
    return res.send(response)

#endregion