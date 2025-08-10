# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal website/blog built with Zola, a fast static site generator written in Rust. The site uses the "zerm" theme (a minimalistic dark theme) and serves content from linnenberg.dev.

## Development Commands

### Build and Development
- **Install Zola**: `npm run install` - Downloads and extracts Zola v0.21.0 binary
- **Build site**: `npm run build` or `./zola build` - Generates static site files
- **Development server**: `./zola serve` - Runs local development server with live reload
- **Check site**: `./zola check` - Validates content and configuration

### Content Management
- **New blog post**: Create markdown file in `content/blog/` with TOML frontmatter
- **New page**: Create markdown file in appropriate `content/` subdirectory

## Architecture and Structure

### Core Components

**Static Site Generator**: Zola (v0.21.0) processes markdown content with TOML frontmatter and Tera templates.

**Theme System**: Based on "zerm" theme with custom modifications:
- Templates in `templates/` directory using Tera templating engine
- Modular macro system for reusable components (header, footer, menu, etc.)
- SCSS stylesheets in `sass/` with component-based organization

**Content Organization**:
- `content/`: All site content in markdown format
- `content/blog/`: Blog posts with date-based sorting
- `content/about/`, `content/contact/`, `content/uses/`: Static pages
- TOML frontmatter for metadata (title, date, tags, categories)

**Asset Management**:
- `static/assets/`: Fonts, JavaScript, and other static resources
- `static/upload/`: User-uploaded content (STL files, images)
- KaTeX integration for mathematical typesetting
- Custom STL viewer for 3D model display

### Key Configuration

**Primary config**: `config.toml`
- Site metadata (title: "linnenberg.dev", author: "Ferdinand Linnenberg")
- Theme settings (pink color scheme, responsive layout)
- Feature toggles (RSS feeds, search index, KaTeX math, Table of Contents)
- Navigation menu and taxonomies (tags, categories)

**Build system**: Simple npm scripts wrapping Zola commands
- No complex build pipeline or dependencies
- Direct Zola binary execution

### Template Architecture

**Base template**: `templates/index.html` with block system
- Responsive container layout (full width, centered, or default)
- Macro-based component system for modularity
- SEO and social media meta tag support

**Content rendering**: 
- List views for blog posts with pagination
- Individual post templates with ToC generation
- Category and tag taxonomy pages

### Styling System

**SCSS organization**: Component-based with color themes
- Main entry: `sass/style.scss` imports all components
- Color variants in `sass/color/` subdirectory
- Responsive design with mobile-first approach

## Important Notes

- Zola binary must be in project root (downloaded via npm script)
- Content uses TOML frontmatter, not YAML
- Templates use Tera syntax (similar to Jinja2)
- Math support requires `math=true` in page frontmatter
- STL files can be embedded using custom shortcode
- Site generates both Atom and RSS feeds automatically