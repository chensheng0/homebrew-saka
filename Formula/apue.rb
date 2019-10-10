# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Apue < Formula
  desc ""
  homepage ""
  url "https://bie-test.gz.bcebos.com/apue-1.0.tar.gz"
  sha256 "7e84d03563f7f0119f2d946cc9f439192e582b65a504c39f4158fea7f38f7cbd"

  # for test chen
  # depends_on "cmake" => :build

  def install
    lib.install "libapue.a"
    include.install "apue.h" 
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test apue`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
