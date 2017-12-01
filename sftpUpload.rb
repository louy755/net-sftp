require 'net/ssh'
require 'net/sftp'
Net::SSH.start("SERVER-NAME", "USERNAME", "PASSWORD" do |ssh|
  ssh.sftp.connect do |sftp|
    sftp.upload! "LOCAL FILE PATH", "REMOTE FILE PATH"     # UPLOAD
    # sftp.download! "REMOTE FILE PATH", "LOCAL FILE PATH" # DOWNLOAD
  end
end
