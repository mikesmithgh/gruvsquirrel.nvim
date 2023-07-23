  # Installation example

  ```sh
  mkdir -p "$(bat --config-dir)/themes"
  cd "$(bat --config-dir)/themes"
  ln -s ~/gitrepos/gruvsquirrel.nvim/extra/bat/gruvsquirrel.tmTheme .   # replace ~/gitrepos with your installation path
  # or cp ~/gitrepos/gruvsquirrel.nvim/extra/bat/gruvsquirrel.tmTheme . # replace ~/gitrepos with your installation path
  bat cache --build
  ```

