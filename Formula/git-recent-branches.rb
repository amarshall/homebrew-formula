class GitRecentBranches < Formula
  desc "Git command plugin to list recently checked-out branches in the current repository."
  homepage "https://github.com/amarshall/git-recent-branches"
  url "https://github.com/amarshall/git-recent-branches/archive/v0.2.0.tar.gz"
  sha256 "216f47df1d0ebc73d77a06cdf99afa27507193f06ab97283ccd6cce98480710b"
  head "https://github.com/amarshall/git-recent-branches.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "cd #{prefix}/Homebrew && git recent-branches"
  end
end
