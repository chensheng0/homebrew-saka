# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Baetyl < Formula
  desc ""
  homepage ""
  url "https://baetyl-test.gz.bcebos.com/baetyl-0.1.6.tar.gz"
  sha256 "29fddb593649d8051d814da0aa7b4a28afb1f49525cc7f3142114b0dbe93f47a"

  # depends_on "cmake" => :build

  def install
    bin.install Dir["bin/*"]
    etc.install Dir["etc/*"]
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
