[![hackmd-github-sync-badge](https://hackmd.io/XxtzloTDR-2RXd8MtUKkfQ/badge)](https://hackmd.io/XxtzloTDR-2RXd8MtUKkfQ)
###### tags: `documentation` `sci`

# [oscinterface](https://github.com/JhonnyJason/oscinterface) v0.1
The specific Interface for the administration of the osc-star server.

## Chat Sites


### /addChatSite
Add a site.

#### request
```json
{
    "authCode": STRINGHEX64,
    "siteURL": STRING
}
```

#### response
```json
{
    "ok": true
}

```

### /getAllChatSites
This will retrieve the full list if sites.

#### request
```json
{
    "authCode": STRINGHEX64
}
```

#### response
```json
{
    "chatSites": ARRAY
}

```

### /removeChatSite
Remove site.

#### request
```json
{
    "authCode": STRINGHEX64,
    "siteURL": STRING
}
```

#### response
```json
{
    "ok": true
}

```
