class GitRecentBranches < Formula
  desc "Git command plugin to list recently checked-out branches in the current repository."
  homepage "https://github.com/amarshall/git-recent-branches"
  url "https://github.com/amarshall/git-recent-branches/archive/v0.3.0.tar.gz"
  sha256 "b92e79c06aaf93987847015d3973a126335f226b2bc0ed84eaedb971c5089dc7"
  head "https://github.com/amarshall/git-recent-branches.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "cd #{prefix}/Homebrew && git recent-branches"
  end
end
