# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Baetyl < Formula
  desc ""
  homepage ""
  url "https://bie-test.gz.bcebos.com/baetyl-0.1.6.tar.gz"
  sha256 "9d8cafe31f561c29f224ee663d6eaf4a89f38283fdb02d5685f39da6b6ff901d"

  # depends_on "cmake" => :build

  def install
    bin.install Dir["bin"]
    etc.install Dir["etc"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test baetyl`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
