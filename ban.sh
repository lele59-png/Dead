# Fungsi untuk mencetak figlet di tengah dan berwarna
center_figlet() {
  local text="$1"
  local color="$2"
  local term_width=$(tput cols)
  local figlet_output=$(figlet "$text")
  while IFS= read -r line; do
    printf "\e[${color}m%*s\e[0m\n" $(( (${#line} + term_width) / 2 )) "$line"
  done <<< "$figlet_output"
}

# Cetak 'silent' dengan warna hijau (32)
center_figlet "silent" 32

# Cetak 'Dead' dengan warna merah (31)
center_figlet "Dead" 31
