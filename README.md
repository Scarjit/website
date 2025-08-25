# [linnenberg.dev](https://linnenberg.dev)

[![Build Status](https://drone.linnenberg.dev/api/badges/Scarjit/website/status.svg)](https://drone.linnenberg.dev/Scarjit/website)
[![License: ISC](https://img.shields.io/badge/License-ISC-blue.svg)](https://opensource.org/licenses/ISC)
[![Powered by Zola](https://img.shields.io/badge/Powered%20by-Zola-orange.svg)](https://www.getzola.org)

[![HSTS Preload](https://img.shields.io/hsts/preload/linnenberg.dev)](https://hstspreload.org/?domain=linnenberg.dev)
[![Mozilla Observatory](https://img.shields.io/mozilla-observatory/grade-score/linnenberg.dev)](https://observatory.mozilla.org/analyze/linnenberg.dev)

Personal website of Ferdinand Linnenberg - built with [Zola](https://www.getzola.org) and optimized for performance.

## Performance Experiments

- 🚀 **Perfect Lighthouse scores**: 100/100 across all metrics (performance, accessibility, SEO, best practices)
- 🔒 **A+ security ratings**: SSL Labs and Security Headers compliance
- ⚡ **Fast builds**: ~9 second CI pipeline with optimized assets

## Development

```bash
# Install Zola and serve locally
make install
make serve

# Build for production
make build
```

## Tech Stack

- **[Zola](https://www.getzola.org)** - Static site generator
- **[Terminus Theme](https://github.com/ebkalderon/terminus)** - Base theme (provides responsive design & themes)
- **Cloudflare** - CDN and security
- **Drone CI** - Continuous deployment

## License

ISC - see `LICENSE.md` for details.
