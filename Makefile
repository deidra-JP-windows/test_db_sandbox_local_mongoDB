STAGE=local

# local環境　コンテナ作成
.PHONY: mongo_container_up_local
mongo_container_up_local: # local環境
	docker-compose --env-file ./env/.${STAGE}.env up -d

# local環境　コンテナ停止
.PHONY: mongo_container_stop_local
mongo_container_stop_local: # local環境
	docker-compose --env-file ./env/.${STAGE}.env stop

# local環境　コンテナ削除
# vscode等でmongodb\data\configdbとmongodb\data\dbを空にして下さい
.PHONY: mongo_container_down_local
mongo_container_down_local: # local環境
	docker-compose --env-file ./env/.${STAGE}.env down