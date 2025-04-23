download:
	curl -OL https://github.com/naoyamorishita/bkk_tls_data/raw/refs/heads/main/dataset/bkk_background.pmtiles
	curl -OL https://github.com/naoyamorishita/bkk_tls_data/raw/refs/heads/main/dataset/tls_all_background.pmtiles

upload:
	aws s3 cp tls_all_background.pmtiles s3://smartmaps/sugi/
	aws s3 cp bkk_background.pmtiles s3://smartmaps/sugi/

