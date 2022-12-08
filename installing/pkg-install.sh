#!/bin/bash -i

input="pkg.txt"
while IFS= read -r line
do
  sudo pacman -S --noconfirm --needed "$line"
done < "$input"

input="aur-pkg.txt"
while IFS= read -r line
do
  paru -S --noconfirm --needed "$line"
done < "$input"


