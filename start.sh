if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/scrooge001/PiroAutoFilterBot2024.git /PiroAutoFilterBot2024
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PiroAutoFilterBot2024
fi
cd /PiroAutoFilterBot2024
pip3 install -U -r requirements.txt
echo "Starting PiroAutoFilterBot...."
python3 bot.py
