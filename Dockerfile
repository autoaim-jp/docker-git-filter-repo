FROM ubuntu:latest

# 必要なツールをインストール
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    python3 \
    python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# PEP 668 の回避方法: --break-system-packages を追加
RUN pip3 install --break-system-packages git-filter-repo

# Gitの安全なディレクトリ設定
RUN git config --global --add safe.directory /repo

# 作業ディレクトリを設定
WORKDIR /repo

