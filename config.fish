alias g='git'
alias nr='npm run'
alias ip="ifconfig | egrep '([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})' -o | egrep -v '\.255\$' | grep -v '127.0.0.1'"
alias scripts="grep 'scripts' -A 20 ./package.json | sed '/}/ q'"
set lk ~/Websites/LuckinCoffee
alias um='cd $lk/luckyunmannedwap'
alias tea='cd $lk/luckyteawap'
alias otp='cd $lk/luckyotp'
alias pmall='cd $lk/luckypmall'
alias client='nr dev:client-snack'
alias server='nr dev:server'
alias lks='npm run dev:server'
alias lkc='npm run dev:client'
set -gx FZF_DEFAULT_COMMAND  'rg --files --ignore-vcs --hidden'
