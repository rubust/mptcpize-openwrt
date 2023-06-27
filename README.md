# mptcpize-openwrt

Add mptcpize feed to the bottom of `feeds.conf.default`:
```
src-git mptcpize git@github.com:rubust/mptcpize-openwrt.git
```

Refresh feeds and install iproute-mptcp feed
```
./scripts/feeds update -a && ./scripts/feeds install -a
```
