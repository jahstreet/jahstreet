export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_17_HOME=$(/usr/libexec/java_home -v17)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java17='export JAVA_HOME=$JAVA_17_HOME'

java8

alias ll='ls -la'
alias gs='git status'
alias gc='git commit -m'
alias gl='git log --oneline'
alias trigger_build='git commit --allow-empty -m "Trigger build"'

function set_kubernetes_namespace() {
  kubectl config set-context --current --namespace=$1
}

alias k='kubectl'
alias kgp='kubectl get po'
alias kgs='kubectl get svc'
alias kgns='kubectl get ns'
alias kns='set_kubernetes_namespace'
alias klt='kubectl logs -f --tail=100'
alias keti='kubectl exec -it'
