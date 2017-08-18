# S3 Static Site Deployment Script
This script can be used to programatically deploy your static site to an S3 bucket. 

## prerequisites

### Install AWS-CLI
Installation guide Here:
```
http://docs.aws.amazon.com/cli/latest/userguide/installing.html
```

### Configure AWS Profile
Setup Guide:
```
http://docs.aws.amazon.com/cli/latest/userguide/cli-multiple-profiles.html
```

## Setup
Create a bucket on S3, you can enable versioning if you wish.

When the bucket has been created, click on it, go to the properties tab and click `Static Web Hosting`. Select `Use this bucket to host a website`. Input the index document for your site (e.g. index.html) and the error page filename. Click save.

Copy the deploy.sh script from this repo to your project. In the script you need to enter the name of the AWS profile you configured earlier, the name of the bucket you just created, and the distribution path. This is the path to the directory containing your index.html file. In the example below, the distribution directory would be `public/` (make sure to include the trailing `/`):

```
- public
	- index.html
	- 404.html
	- css
		- mystyle.css
```