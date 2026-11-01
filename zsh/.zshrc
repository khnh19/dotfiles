export EDITOR="hx"

alias c='clear'
alias x='exit'

hc() {
  if [[ ! -e "$1.cpp" ]]; then
    cat << 'EOF' > "$1.cpp"
#if 0
#!/ bin / sh
g++ -std=c++17 -O2 -Wall "$0" -o /tmp/output && /tmp/output
exit
#endif
#include <iostream>

using namespace std;

int main() {
  cin.tie(nullptr)->sync_with_stdio(false);
}
EOF
    chmod +x "$1.cpp"
  fi
  hx "$1.cpp"
}

PROMPT='%1~ '
eval "$(zoxide init zsh --cmd cd)"

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
