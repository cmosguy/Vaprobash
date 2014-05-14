#!/usr/bin/env bash

echo ">>> Installing Screen"

# Screen
sudo apt-get install screen
sudo touch /home/$USER/.screenrc
sudo echo -e "startup_message off\ncaption always '%{= dg} %H %{G}%=%?%{d}%-w%?%{r}(%{d}%n %t%? {%u} %?%{r})%{d}%?%+w%?%=%{G} %{B}%M %d %c:%s '" >> /home/$USER/.screenrc
