ENVIRONMENT=staging
BUCKET=docs.processout.ninja
DISTRIBUTION=E22YMW8B42GXG7

.PHONY: build
build:
	docker network list | grep processout || docker network create processout
	docker compose up build
.PHONY: test
test:
	docker network list | grep processout || docker network create processout
	docker-compose up server

.PHONY: deploy-staging
deploy-staging: deploy

.PHONY: deploy-production
deploy-production: ENVIRONMENT=production
deploy-production: BUCKET=docs.processout.com
deploy-production: DISTRIBUTION=EX89GBCWQ9F9S
deploy-production: deploy

.PHONY: deploy
deploy: build sync invalidate

.PHONY: sync
sync:
	aws-vault exec ${ENVIRONMENT}Admin -- aws s3 sync build/ s3://${BUCKET}/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers

.PHONY: invalidate
invalidate:
	aws-vault exec ${ENVIRONMENT}Admin -- aws cloudfront create-invalidation --distribution-id=${DISTRIBUTION} --paths '/*'
