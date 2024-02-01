if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MOBI1241/LazyPrincessV2.git /MOBI1241
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone $UPSTREAM_REPO /MOBI1241
fi

cd /MOBI1241
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
