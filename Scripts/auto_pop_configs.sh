#!/bin/bash

# Pop!_24.04 configuration script after post-install

# Create a folder and download the wallpaper from Reddit
mkdir $HOME/Pictures/Wallpapers
wget https://i.redd.it/b76jlqhxltze1.png -O $HOME/Pictures/Wallpapers/island.png

echo "------"

# Show an icon instead of the "Applications" menu on the Pop panel
echo "{" > $HOME/.config/cosmic/com.system76.CosmicPanelButton/v1/configs 
echo "    \"Panel\": (force_presentation: Some(Icon))" >> $HOME/.config/cosmic/com.system76.CosmicPanelButton/v1/configs
echo "}" >> $HOME/.config/cosmic/com.system76.CosmicPanelButton/v1/configs

# Enable only if laptop to show the battery percentage next to the panel icon
# echo "------"
# echo "true" > ~/.config/cosmic/com.system76.CosmicAppletBattery/v1/show_percentage
