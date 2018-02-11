

# Your macbook username
export USER_NAME="mac"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/mac/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="j4yi"

# ZSH_CUSTOM Path
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

 

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aws,
  brew,
  git,
  gulp,
  iterm2,
  lighthouse,
  man,
  mvn,
  nap,
  npm,
  node,
  nvm,
  ox,
  yarn,
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_GB.UTF-8
export LANGUAGE=$LANG
export LC_ALL=$LANG

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh | generate ssh-key $ ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
export SSH_KEY_PATH="~/.ssh/id_rsa"

### PATH NVM CLI  https://github.com/MarcelRittershaus/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



PATH="/usr/local/share/python/:$PATH"

### PATH JAVA / Maven CLI http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home
export M2_HOME=/Users/"$USER_NAME"/_dev/apache-maven-3.5.2
export M2=$M2_HOME/bin
export PATH=$JAVA_HOME:$M2:$PATH



### PATH MONGO DB CLI https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin


### PATH Bluemix CLI https://console.bluemix.net/docs/cli/plugins/bluemix_admin/index.html#bluemixadmincli
source /usr/local/Bluemix/bx/zsh_autocomplete


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# alias – Apps
# Add Visual Studio Code (code) Use: $ Code .
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
alias ij='open -b com.jetbrains.intellij'

alias chrome='open -a Google\ Chrome --args --disable-web-security'
alias firefox='open -a Firefox'
alias safari='open -a Safari'


# alias – tests 

## google lighthouse Use: $ lh YOUR-TEST-URL.com
function lighthouse_fn(){
   lighthouse https://"$@" --output=html --output-path=/Users/"$USER_NAME"/Desktop/lh-results-"$@".html --view
}
alias lh=lighthouse_fn


# alias – net

## external ip-adress $ net_ip
alias net_ip='dig +short myip.opendns.com @resolver1.opendns.com'

## list open tcp ports and process $ net_tcp
alias net_tcp='netstat -anp tcp'

## list ip/connction traceroute $ net_trace YOUR-TEST-URL.com
function trace_fn(){
   traceroute "$@"
}
alias net_trace=trace_fn


# alias - convert

## Sass/SCSS
function scsssass_fn(){
   sass-convert -R "$@" --from scss --to sass 
}
alias scss_sass=scsssass_fn 

function sassscss_fn(){
   sass-convert -R "$@" --from sass --to scss 
}
alias scss_sass=sassscss_fn 
