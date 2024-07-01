if [ "$TERM" = "linux" ]; then
  echo -en "\e]P0{colorbg.strip}" # Black
  echo -en "\e]P1{color1.strip}" # Red
  echo -en "\e]P2{color2.strip}" # Green
  echo -en "\e]P3{color3.strip}" # Yellow
  echo -en "\e]P3{color4.strip}" # Blue
  echo -en "\e]P5{color5.strip}" # Magenta
  echo -en "\e]P6{color6.strip}" # Cyan
  echo -en "\e]P7{color7.strip}" # White
  echo -en "\e]P8{color8.strip}" # Bright Black
  echo -en "\e]P9{color9.strip}" # Bright Red
  echo -en "\e]PA{color10.strip}" # Bright Green
  echo -en "\e]PB{color11.strip}" # Bright Yellow
  echo -en "\e]PC{color12.strip}" # Bright Blue
  echo -en "\e]PD{color13.strip}" # Bright Magenta
  echo -en "\e]PE{color14.strip}" # Bright Cyan
  echo -en "\e]PF{color15.strip}" # Bright White
  clear # Clear artifacts
fi
