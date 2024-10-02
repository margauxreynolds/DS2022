#!/bin/bash

# Upload my file to my bucket
aws s3 cp rotunda_image.jpg s3://ds2022-tsh3ut/

# Presigns a URL to that file with an expiration of 604800 (7 days)
aws s3 presign --expires-in 604800 s3://ds2022-tsh3ut/rotunda_image.jpg

# Presigned URL 
PRESIGNED_URL="https://ds2022-tsh3ut.s3.us-east-1.amazonaws.com/rotunda_image.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVYV5Z35ZZCEUOLGW%2F20241002%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241002T015640Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=265edaabda3245084f2bb3b9e006bde54dc09d10fa5c203a5f398f6513f4437d"


