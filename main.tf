resource "datadog_synthetics_test" "auth-ct-optaservice" {
  type = "api"
  subtype = "http"
  request = {
    method = "POST"
    url = "https://auth-ct.optaservice.com/auth/realms/opta/protocol/openid-connect/token"
    body = "${file("${path.module}/test.json")}"
    }
  request_headers = {
    Content-Type = "application/x-www-form-urlencoded"                                                                                                                                                             
  }

  assertion {
      type = "statusCode"
      operator = "is"
      target = "${var.target}"
  }
  locations = [ "aws:us-east-2" ]
  options = {
    tick_every = "900"
  }
  name = "auth-ct-optaservice"
  message = "Notify @pagerduty"
  tags = ["foo:bar", "foo", "env:test"]

  status = "${var.status}"
}
