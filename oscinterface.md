###### tags: `documentation` `sci`

# [oscinterface](https://github.com/JhonnyJason/oscinterface) v0.2
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
