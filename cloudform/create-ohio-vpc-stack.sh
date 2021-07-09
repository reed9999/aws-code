# For the moment hardcode a region
aws cloudformation describe-stacks --output text > cfn-preexisting.txt

TEMPLATE_URL="https://reed9999.s3-us-west-2.amazonaws.com/automation/cfn-temp/cf03-vpc.yaml"
REGION="us-east-2"
aws cloudformation create-stack \
--stack-name Philip-simple-vpc-auto \
--template-body ${TEMPLATE_URL} \
--region $REGION \
--output text >> cfn-new-vpn-stack-id.txt
# Output type of YAML only available with CLI version 2

