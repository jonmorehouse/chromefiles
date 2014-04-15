# zshrc for when zsh is started inside of vim!
source $HOME/.zshrc

ZSH_THEME="agnoster"
PROMPT='%(!.%{$fg_bold[gray]%}.%{$fg_bold[gray]%})%{$fg_bold[gray]%}$(path_tail 2) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

# specific settings for using zsh within vim using conqueterm
clear


