  # Installation example

  ```sh
  ~/gitrepos/gruvsquirrel.nvim/extra/bat/gruvsquirrel.sh
  mkdir -p "$(bat --config-dir)/themes"
  cd "$(bat --config-dir)/themes"
  ln -s ~/gitrepos/gruvsquirrel.nvim/extra/bat/themes/gruvsquirrel.tmTheme .   # replace ~/gitrepos with your installation path
  # or cp ~/gitrepos/gruvsquirrel.nvim/extra/bat/gruvsquirrel.tmTheme . # replace ~/gitrepos with your installation path
  bat cache --build
  ```

