if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GreatBots/TovinoBotV3.git /TovinoBotV3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TovinoBotV3
fi
cd /TovinoBotV3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
