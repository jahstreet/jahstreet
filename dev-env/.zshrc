export JAVA_HOME=$(/usr/libexec/java_home -v 1.17)

alias ll='ls -la'
alias gs='git status'
alias gc='git commit -m'
alias trigger_build='git commit --allow-empty -m "Trigger build"'

function set_kubernetes_namespace() {
  kubectl config set-context $(kubectl config current-context) --namespace=$1
}

alias k='kubectl'
alias kgp='kubectl get po'
alias kgs='kubectl get svc'
alias kgns='kubectl get ns'
alias kns='set_kubernetes_namespace'
