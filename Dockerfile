# ベースイメージとしてPythonを使用
FROM python:3.11.0

# 作業ディレクトリを設定
WORKDIR /app

# Pythonの依存関係をインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ソースコードをコピー
COPY . .

# ポートを公開
EXPOSE 5000

# アプリケーションを実行
CMD ["python", "run.py"]
