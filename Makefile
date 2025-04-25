# Define the S3 bucket
S3_BUCKET = s3://smartmaps/sugi/

# Download all files listed in urls.txt using curl
download:
	@echo "Downloading files from urls.txt using curl..."
	@cat urls.txt | while read url; do \
		filename=$$(basename $$url); \
		echo "Downloading $$filename..."; \
		curl -OL $$url; \
	done

# Upload all downloaded .pmtiles files to the S3 bucket using aws s3
upload:
	@echo "Uploading .pmtiles files to $(S3_BUCKET) using aws s3..."
	@for file in *.pmtiles; do \
		echo "Uploading $$file..."; \
		aws s3 cp $$file $(S3_BUCKET); \
	done
