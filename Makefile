docker:
  sudo apt-get install -y apt-transport-https wget
  wget -q https://packagecloud.io/gpg.key -O - | sudo apt-key add -
  echo 'deb https://packagecloud.io/Hypriot/Schatzkiste/debian/ $(lsb_release -cs) main' | sudo tee /etc/apt/sources.list.d/hypriot.list
  sudo apt-get update
  sudo apt-get install -y docker-hypriot
  sudo systemctl enable docker
