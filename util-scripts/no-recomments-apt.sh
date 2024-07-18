sudo mkdir -p /etc/apt/apt.conf.d/
sudo touch /etc/apt/apt.conf.d/99_norecommends
sudo bash -c '{
  echo "APT::Install-Recommends \"false\";"
  echo "APT::AutoRemove::RecommendsImportant \"false\";"
  echo "APT::AutoRemove::SuggestsImportant \"false\";"
} >> /etc/apt/apt.conf.d/99_norecommends'
