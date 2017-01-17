class GitRecentBranches < Formula
  desc "Git command plugin to list recently checked-out branches in the current repository."
  homepage "https://github.com/amarshall/git-recent-branches"
  head "https://github.com/amarshall/git-recent-branches.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "cd #{prefix}/Homebrew && git recent-branches"
  end
end
