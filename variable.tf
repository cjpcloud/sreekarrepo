variable "subtype" {
        description = "you can choose subtype http/ssl"
	default = "http"
}
variable "method" {
        description = "you can choose method POST/GET"
        default = "post"
}
variable "target" {
        description = "you can type target 200/400"
        default = "200"
}
variable "operator" {
        description = "you can choose operator is/is equal"
        default = "is"
}
variable "status" {
        description = "you can choose the status live/offline"
        default = "live"
}
variable "tick_every" {
        description = "type the tick_every like 900"
        default = "900"
}
variable "password" {
        description = "type the tick_every like 900"
        default = "ByTheWay"
}
variable "partnerId" {
        description = "type the tick_every like 900"
        default = "SCM"
}
variable "clientId" {
        description = "type the tick_every like 900"
        default = ""
}
variable "userId" {
        description = "type the tick_every like 900"
       
        default = "batch-proc"
}
variable "zones" {
        description = "type the tick_every like 900"
        
        default = "*"
}
variable "unixTime" {
        description = "type the tick_every like 900"
        default = "Math.floor(new Date().getTime() / 1000)"
}

variable "stringToHash" {
        description = "type the tick_every like 900"
        default = "ByTheWay + SCM +  + batch-proc + * + Math.floor(new Date().getTime() / 1000)"
}
variable "hash" {
        description = "type the tick_every like 900"
        default = "require('crypto').createHash('md5').update('ByTheWay + SCM +  + batch-proc + * + Math.floor(new Date().getTime() / 1000)').digest('hex').toUpperCase().slice(0, 16)"
}
#variable "querystring" {
#        description = "type the tick_every like 900"
#        default = "require('querystring')"
#}
variable "crypto" {
        description = "type the tick_every like 900"
        default = "require('crypto')"
}
variable "token" {
        description = "type the tick_every like 900"
        default =  "SCM + [, batch-proc, *, Math.floor(new Date().getTime() / 1000), require('crypto').createHash('md5').update('ByTheWay + SCM +  + batch-proc + * + Math.floor(new Date().getTime() / 1000)').digest('hex').toUpperCase().slice(0, 16)].join('_')"
}
variable "params" {
       default = "require('querystring').string('\n{\n\t\"output\": \"xml\",\n\t\"token\": \"SCM + [, batch-proc, *, Math.floor(new Date().getTime() / 1000), require('crypto').createHash('md5').update('ByTheWay + SCM +  + batch-proc + * + Math.floor(new Date().getTime() / 1000)').digest('hex').toUpperCase().slice(0, 16)].join('_')\",\n\t\"systemID\": \"1\",\n\t\"streetNumber\": \"3202\",\n\t\"streetFullName\": \"TANIA\",\n\t\"province\": \"ON\",\n\t\"ServiceProviderID\": \"\"\n}\n')"
}
variable "payload" {
       default =  "\n{\n\t\"output\": \"xml\",\n\t\"token\": \"SCM + [, batch-proc, *, Math.floor(new Date().getTime() / 1000), require('crypto').createHash('md5').update('ByTheWay + SCM +  + batch-proc + * + Math.floor(new Date().getTime() / 1000)').digest('hex').toUpperCase().slice(0, 16)].join('_')\",\n\t\"systemID\": \"1\",\n\t\"streetNumber\": \"3202\",\n\t\"streetFullName\": \"TANIA\",\n\t\"province\": \"ON\",\n\t\"ServiceProviderID\": \"\"\n}\n"
     
}
