#!/usr/bin/python3

import boto3
import requests

# Variables needed
bucket_name = 'ds2022-tsh3ut'
object_name = 'data.gif'
expires_in = 604800


# Fetch file from the internet
URL = 'https://i.gifer.com/origin/c5/c5056fe916b043776e98d6149847ffbd.gif'
file_name = 'downloaded_data.gif'

response = requests.get(URL)
with open(file_name, 'wb') as f:
    f.write(response.content)

# Upload file to a bucket in s3
s3 = boto3.client('s3')

with open(file_name, 'rb') as f:
	s3.put_object(
		Body=f,
        	Bucket=bucket_name,
        	Key=object_name,
        	ACL='public-read' 
    	)

# Presign the file with a 7 day expiration
response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
)
 
# Output the presigned URL
print(response)

# Presigned URL: https://ds2022-tsh3ut.s3.amazonaws.com/data.gif?AWSAccessKeyId=AKIAVYV5Z35ZZCEUOLGW&Signature=qzunTOLAykT0ys01yYLLwzog6Gs%3D&Expires=1728495241


