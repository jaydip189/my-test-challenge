# Gather info from instance metadata and converted into json
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
REGION=$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | python -c "import sys, json; print(json.load(sys.stdin))['region']")
INFO=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --region $REGION)
echo $INFO | jq -s
