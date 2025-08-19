# ベースは常に upstream。
ARG UPSTREAM_TAG=latest
FROM n8nio/n8n:${UPSTREAM_TAG}

# 公式は USER node で動くため、一時的に root に昇格して導入
USER root
RUN set -eux; apk add --no-cache ffmpeg

# 権限を戻す（n8n の既定ユーザ）
USER node
