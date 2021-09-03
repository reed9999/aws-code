# For the moment hardcode a region
aws cloudformation describe-stacks > cfn-preexisting.json

TEMPLATE_URL="https://reed9999.s3-us-west-2.amazonaws.com/automation/cfn-temp/cf02-spot.yaml"
REGION=$1 || "us-east-2"
aws cloudformation create-stack \
--stack-name Philip02d-auto \
--template-body ${TEMPLATE_URL} \
--parameters ParameterKey=keyName,ParameterValue=CapeTownKeyPair \
--region $REGION >> cfn-new-stack-id.json

