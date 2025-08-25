// Make external links open in new tabs
document.addEventListener('DOMContentLoaded', function() {
    // Get all links that start with http but don't contain our domains
    const externalLinks = document.querySelectorAll('a[href^="http"]:not([href*="linnenberg.dev"]):not([href*="localhost"]):not([href*="127.0.0.1"])');
    
    externalLinks.forEach(function(link) {
        // Don't modify social icons in footer
        if (!link.closest('.footer')) {
            link.setAttribute('target', '_blank');
            link.setAttribute('rel', 'noopener noreferrer');
        }
    });
});