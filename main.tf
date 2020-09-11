resource "datadog_synthetics_test" "auth-ct-optaservice" {
  type = "api"
  subtype = "http"
  request = {
    method = "POST"
    uri = "http://address.ilookabout.com/AddressingService/? + ${var.params}"
 #   body = "${var.userId}"
    stringToHash = "${var.stringToHash}"
    hash = "${var.crypto}.createHash('md5').update('${var.stringToHash}').digest('hex').toUpperCase().slice(0, 16)"
    token = "${var.partnerId} + [ batch-proc, *, Math.floor(new Date().getTime() / 1000), require('crypto').createHash('md5').update('ByTheWay + SCM +  + batch-proc + * + Math.floor(new Date().getTime() / 1000)').digest('hex').toUpperCase().slice(0, 16)].join('_')"
   
    payload = "${var.payload}"
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
