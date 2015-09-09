execute "install jq" do
  command <<-EOH
    cd /tmp
    wget http://stedolan.github.io/jq/download/linux64/jq
    mv jq /usr/local/bin/
    chmod +x /usr/local/bin/jq
  EOH
  not_if "test -e /usr/local/bin/jq"
end
