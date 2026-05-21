alias cd="z"

# Helper function to reset to system Java
java-system() {
  export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
  export PATH="$JAVA_HOME/bin:$(echo "$PATH" | tr ':' '\n' | grep -v ".sdkman" | tr '\n' ':' | sed 's/:$//')"
  echo "Switched to system Java 21 (Android Studio)"
  java -version 2>&1 | head -1
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(zoxide init zsh)"
