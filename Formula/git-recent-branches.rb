class GitRecentBranches < Formula
  desc "Git command plugin to list recently checked-out branches in the current repository."
  homepage "https://github.com/amarshall/git-recent-branches"
  url "https://github.com/amarshall/git-recent-branches/archive/v0.3.1.tar.gz"
  sha256 "09deb99962fa8f52354b89984373b84da91090e10312d8fff25af9723fab95fd"
  head "https://github.com/amarshall/git-recent-branches.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "cd #{prefix}/Homebrew && git recent-branches"
  end
end
