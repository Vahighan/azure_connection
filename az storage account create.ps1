az storage account create
--location westurope
--name StorageAcc
--sku Basic

az storage account blob-service-properties update --account-name StorageAcc --enable-change-feed true --enable-restore-policy true --enable-delete-retention true --delete-retention-days 100 -n StorageAcc -g build-agents-01

az resource delete --resource-group build-agents-01 --ids "$id" --verbose

done