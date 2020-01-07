# anyenvのpathを通す
eval (anyenv init - | source)

# direnvのpathを通す
eval (direnv hook fish)

#fisherパッケージdecors/fish-ghqの設定
set GHQ_SELECTOR peco

# キーバインドの設定
function fish_user_key_bindings
  # pecoでhistoryをインクリメンタルに検索できるやつ。便利すぎる。
  bind \cr 'peco_select_history (commandline -b)'
  # pecoのhistoryのインクリメンタル検索をkill
  bind \cx\ck peco_kill
  # z コマンドで頻繁に訪れるディレクトリを peco で選択して移動する。
  bind \cx\cr peco_recentd
end
