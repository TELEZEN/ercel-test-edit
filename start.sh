if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TELEZEN/ercel-test-edit.git /ercel-test-edit
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ercel-test-edit
fi
cd /ercel-test-edit
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
