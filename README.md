# 「Wonder Scrum」

## 概要
WonderScrum専用のボイラープレート Rails6（REST API）+ Docker + PostgreSQL + Graphql

## 開発環境構築

### 環境構築する手順
1. .envファイルを作成
2. .env.sampleの中身を.envファイルにコピペする
3. DATABASE_NAME=example_developmentをDATABASE_NAME=wonder-scrum_developmentに変更する
4. database.ymlの[example]をwonder-scrumに変更する
5. docker-compose up -d --buildコマンドを叩いて、完了
