class GitRecentBranches < Formula
  desc "Git command plugin to list recently checked-out branches in the current repository."
  homepage "https://github.com/amarshall/git-recent-branches"
  url "https://github.com/amarshall/git-recent-branches/archive/v0.1.0.tar.gz"
  sha256 "261735f6d7be0ea11250d08e7250bdb084f9e819ca47efb1ee62e7e31a0f79e9"
  head "https://github.com/amarshall/git-recent-branches.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "cd #{prefix}/Homebrew && git recent-branches"
  end
end
