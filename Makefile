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
