#!/bin/bash

# Function to print colors with their respective codes
print_colors() {
    for i in {0..255}; do
        # Print the color code and the corresponding background color
        printf "\e[48;5;%sm %3d \e[0m" "$i" "$i"
        # Print a new line every 8 colors for better readability
        if [ $(( (i + 1) % 8 )) -eq 0 ]; then
            echo
        fi
    done
}

echo "Displaying 256-color codes with their respective colors:"
print_colors

COLOR_235="\[\e[38;5;235m\]"
COLOR_RESET="\[\e[0m\]"
printf "${COLOR_235}####### ${COLOR_RESET} >"
echo
