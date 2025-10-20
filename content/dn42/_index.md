+++
title = "DN42 Peering"
description = "DN42 network peering information for SCARJIT-MNT"
+++

# DN42 Network

## What is DN42?

DN42 is a decentralized network that mimics the structure of the Internet. It's a playground for network enthusiasts to experiment with routing protocols, network design, and inter-domain networking in a real-world-like environment without affecting production systems.

Learn more at [dn42.eu](https://dn42.eu).

## My Network Information

- **ASN**: AS4242420257
- **Maintainer**: SCARJIT-MNT
- **Contact**: [ferdinand@linnenberg.dev](mailto:ferdinand@linnenberg.dev)
- **Network Map**: [View on iEdon DN42 Map](https://map.iedon.net/#4242420257)

### Allocations
- **IPv4**: `172.20.13.0/27`
- **IPv6**: `fd30:366:4000::/48`

### Router IPs
- **IPv4**: 172.20.13.1
- **IPv6**: fd30:366:4000::1

## Peering with Me

### Prerequisites
- WireGuard tunnel support
- BGP daemon (Bird2, FRRouting, etc.)
- Valid DN42 registry objects (mntner, person, AS, inetnum/inet6num)
- ROA objects registered in the DN42 registry for your prefixes

### My Endpoint
- **Public IPv6**: `2a0a:a543:d3f3:80:be24:11ff:fe5d:a0dc`
- **WireGuard Public Key**: `BsU2BEUpd6aqPqCAyU5kFakuOPRi8i5Ou6v6WJKXEXY=`

### How to Peer

1. **Contact me** at [ferdinand@linnenberg.dev](mailto:ferdinand@linnenberg.dev)
2. **Exchange information**:
   - Your ASN
   - Your WireGuard public key
   - Your WireGuard endpoint (IP:port)
   - Tunnel IPs you'd like to use (link-local or private)
   - I will send you my WireGuard port
3. **Configure WireGuard tunnel**
4. **Set up BGP session** using tunnel IPs
5. **Test connectivity** and route exchange

### Peering Policy
- Open peering policy - happy to peer with anyone in DN42
- **ROA validation enforced** - Only routes with valid ROA entries will be accepted
- IPv4 and IPv6 (prefered) BGP sessions supported
- Multi-protocol BGP over IPv6 supported
- BFD supported
- Latency under 500ms prefered
- I do not have uptime guarantees

## Resources

- **DN42 Registry**: [https://git.dn42.dev/dn42/registry](https://git.dn42.dev/dn42/registry)
- **My Registry Objects**: Search for SCARJIT-MNT in the registry
