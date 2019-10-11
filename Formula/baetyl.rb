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
    # # Changes log level to default value
    # inreplace "etc/baetyl/conf.yml" do |s|
    #     s.gsub! "level: debug", ""
    # end

    bin.install Dir["bin/*"]
    etc.install Dir["etc/*"]
  end

  def caveats
    <<~EOS

      To have launchd start baetyl now and restart at login:
        brew services start baetyl
      Or, if you don't want/need a background service you can just run:
        sudo baetyl start

    EOS
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>RunAtLoad</key>
        <true/>
        <key>KeepAlive</key>
        <true/>
        <key>ProgramArguments</key>
        <array>
            <string>/usr/local/bin/baetyl</string>
            <string>start</string>
            <string>-w</string>
            <string>/usr/local/</string>
            <string>-c</string>
            <string>/usr/local/etc/baetyl/conf.yml</string>
        </array>
        <key>WorkingDirectory</key>
        <string>/usr/local</string>
      </dict>
    </plist>
  EOS
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
