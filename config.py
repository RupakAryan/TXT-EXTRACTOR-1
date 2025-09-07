import os
from os import getenv

API_ID = int(os.environ.get("API_ID", "29978901"))  # Replace "123456" with your actual api_id or use .env
API_HASH = os.environ.get("API_HASH", "500fc876c5356cf04ed3698912dc2edf")
BOT_TOKEN = os.environ.get("BOT_TOKEN", "8484698189:AAHfuvgdEWF6Z-wOKHMq8WL-CJhnheriq3g")

OWNER_ID = int(os.environ.get("OWNER_ID", "5776977809"))  # Your Telegram user ID
SUDO_USERS = list(map(int, os.environ.get("SUDO_USERS", "5776977809").split()))  # Space-separated user IDs

MONGO_URL = os.environ.get("MONGO_URL", "mongodb+srv://rupakaryanaryan:rupakaryanaryan@cluster0.05xkjx2.mongodb+srv://rupakaryanaryan:rupakaryanaryan@cluster0.05xkjx2.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0")##your mongo url eg: withmongodb+srv://xxxxxxx:xxxxxxx@clusterX.xxxx.mongodb.net/?retryWrites=true&w=majority
CHANNEL_ID = int(os.environ.get("CHANNEL_ID", "-1003068385283"))  # Telegram channel ID (with -100 prefix)

PREMIUM_LOGS = os.environ.get("PREMIUM_LOGS", "")  # Optional here you'll get all logs
