class Neovim < Formula
  desc "Vim-fork focused on extensibility and agility."
  homepage "https://github.com/neovim/neovim"
  head "https://github.com/neovim/neovim.git"

  depends_on "cmake" => :build

  depends_on "libtermkey"
  depends_on "libuv"
  depends_on "libvterm"
  depends_on "luajit"
  depends_on "msgpack"
  depends_on "unibilium"

  depends_on "lpeg" => :lua
  depends_on "lua-messagepack" => :lua
  depends_on "luabitop" => :lua

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system bin/"nvim", "-v"
  end
end
