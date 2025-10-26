
proxy_addr="https://ghfast.top/"

intro_version=${1:-10.11}
# https://github.com/intro-skipper/manifest/tree/main
manifest="https://raw.githubusercontent.com/intro-skipper/manifest/refs/heads/main/${intro_version}/manifest.json"

curl $manifest -o intro-skipper-manifest.json

sed -i 's#https://github.com#'"${proxy_addr}"'https://github.com#g' intro-skipper-manifest.json
sed -i 's#https://raw.githubusercontent.com#'"${proxy_addr}"'https://raw.githubusercontent.com#g' intro-skipper-manifest.json
