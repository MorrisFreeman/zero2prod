watch:
	cargo watch -x check -x test -x run
coverage:
	cargo tarpaulin --ignore-tests
lint:
	cargo clippy -- -D warnings
fmt:
	cargo fmt
audit:
	cargo audit
db-migrate:
	SKIP_DOCKER=true ./scripts/init_db.sh
db-migrate-prod:
	DATABASE_URL=postgresql://newsletter_owner:a0HXEWxvu5fC@ep-sparkling-term-a1o7jovu.ap-southeast-1.aws.neon.tech/newsletter?sslmode=require sqlx migrate run
# 本番デプロイする前にクエリキャッシュファイルを作成しておく必要がある
db-prepare:
	cargo sqlx prepare --workspace
