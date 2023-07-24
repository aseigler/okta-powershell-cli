#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum LogStreamType.

.DESCRIPTION

The Log Stream type specifies the streaming provider used. Okta supports [AWS EventBridge](https://aws.amazon.com/eventbridge/) and [Splunk Cloud](https://www.splunk.com/en_us/software/splunk-cloud-platform.html).
#>

enum LogStreamType {
    # enum value: "aws_eventbridge"
    aws_eventbridge
    # enum value: "splunk_cloud_logstreaming"
    splunk_cloud_logstreaming
}
