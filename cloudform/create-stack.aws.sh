# For the moment hardcode a region
aws cloudformation describe-stacks > cfn-preexisting.json

TEMPLATE_URL="https://reed9999.s3-us-west-2.amazonaws.com/automation/cfn-temp/cf02-spot.yaml"
aws cloudformation create-stack \
--stack-name Philip02b-auto \
--template-body ${TEMPLATE_URL} \
--parameters ParameterKey=keyName,ParameterValue=temp-spot-fun \
--region us-east-2 >> cfn-new-statk-id.json



