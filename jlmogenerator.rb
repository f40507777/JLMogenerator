# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Jlmogenerator < Formula
  desc "Patch UUID mogenerator for Jello"
  homepage ""
  url "https://github.com/f40507777/JLmogenerator/archive/1.2.tar.gz"
  # depends_on "cmake" => :build

  def install
	xcodebuild "-target", "jlmogenerator", "-configuration", "Release", "SYMROOT=symroot", "OBJROOT=objroot"
    	bin.install "symroot/Release/jlmogenerator"    
  end

  test do
    system "false"
  end
end
