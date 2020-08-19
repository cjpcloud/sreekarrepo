provider "datadog" {
  validate = "false"
 
}
resource "datadog_synthetics_test" "test_api" {
  type = "api"
  subtype = "http"
  request = {
    method = "POST"
    url = "http://opta-service-bus.prodmsenv-k8s.optaservice.com/?Products=InspectionScore"
    body = file("/root/sreekar/test.json")
    }
  request_headers = {
    host = "opta-service-bus.prodmsenv-k8s.optaservice.com"
    Content-Type = "application/json"

  }

  assertion {
      type = "statusCode"
      operator = "is"
      target = "200"
  }
  locations = [ "aws:us-east-1" ]
  options = {
    tick_every = 900
  }
  name = "An API test on example.org"
  message = "Notify @pagerduty"
  tags = ["foo:bar", "foo", "env:test"]

  status = "live"
}

