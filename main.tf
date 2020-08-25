resource "datadog_synthetics_test" "auth-ct-optaservice" {
  type = "api"
  subtype = "${var.subtype}"
  request = {
    method = "${var.method}"
    url = "https://auth-ct.optaservice.com/auth/realms/opta/protocol/openid-connect/token"
    body = "grant_type=password&client_secret=d23cf6e4-b621-41ec-ba02-008f1adcb200&client_id=opta_single_service&username=newrelic.monitor@scm.ca&password=secret123&scope=offline_access"
    }
  request_headers = {
    Content-Type = "application/x-www-form-urlencoded"                                                                                                                                                             
  }

  assertion {
      type = "statusCode"
      operator = "${var.operator}"
      target = "${var.target}"
  }
  locations = [ "aws:us-east-2" ]
  options = {
    tick_every = "${var.tick_every}"
  }
  name = "auth-ct-optaservice"
  message = "Notify @pagerduty"
  tags = ["foo:bar", "foo", "env:test"]

  status = "${var.status}"
}
