output "subtype" {
        description = "you can choose subtype http/ssl"
        value = "${var.subtype}"
}
output "method" {
        description = "you can choose method POST/GET"
        value = "${var.method}"
}
output "target" {
        description = "you can type target 200/400"
        value = "${var.target}"
}
output "operator" {
        description = "you can choose operator is/is equal"
        value = "${var.operator}"
}
output "status" {
        description = "you can choose the status live/offline"
        value = "${var.status}"
}
output "tick_every" {
        description = "type the tick_every like 900"
        value = "${var.tick_every}"
}

