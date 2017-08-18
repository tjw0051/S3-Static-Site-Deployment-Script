
##################################################################

# Your AWS Profile defined in ~/.aws/credentials and ~/.aws/config
aws_profile="default"
aws_bucket="my-s3-bucket"
# Static files to copy to S3
distribution_path="public/"

###################################################################


# Set AWS Credentials profile
export AWS_PROFILE=$aws_profile

# Upload
# Options: --exclude ""
aws s3 cp --recursive $distribution_path s3://$aws_bucket/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
