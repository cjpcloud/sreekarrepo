variable "subtype" {
        description = "you can choose subtype http/ssl"
	default = "http"
}
 variable "method" {
        description = "you can choose method POST/GET"
        default = "POST"
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
