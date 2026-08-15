/**
 * --------------------------------------------------------------------
 * docmd : the zero-config documentation engine.
 *
 * @package     @docmd/core (and ecosystem)
 * @website     https://docmd.io
 * @repository  https://github.com/docmd-io/docmd
 * @license     MIT
 * @copyright   Copyright (c) 2025-present docmd.io
 *
 * [docmd-source] - Please do not remove this header.
 * --------------------------------------------------------------------
 */

/* 
 * A simple lightbox implementation for gallery images
 */

document.addEventListener('DOMContentLoaded', function () {
  // Create lightbox elements
  const lightbox = document.createElement('div');
  lightbox.className = 'docmd-lightbox';
  const content = document.createElement('div');
  content.className = 'docmd-lightbox-content';
  const img = document.createElement('img');
  img.src = '';
  img.alt = '';
  const caption = document.createElement('div');
  caption.className = 'docmd-lightbox-caption';
  content.appendChild(img);
  content.appendChild(caption);
  
  const close = document.createElement('div');
  close.className = 'docmd-lightbox-close';
  close.innerHTML = '&times;'; // Hardcoded entity is safe
  
  lightbox.appendChild(content);
  lightbox.appendChild(close);
  document.body.appendChild(lightbox);

  const lightboxImg = lightbox.querySelector('img');
  const lightboxCaption = lightbox.querySelector('.docmd-lightbox-caption');
  const lightboxClose = lightbox.querySelector('.docmd-lightbox-close');

  // Find all images with lightbox class or in image galleries
  const lightboxImages = document.querySelectorAll('img.lightbox, .image-gallery img');

  // Add click event to each image
  lightboxImages.forEach(function (img) {
    img.style.cursor = 'zoom-in';

    img.addEventListener('click', function () {
      // Get the image source and caption
      const src = this.getAttribute('src');
      let caption = this.getAttribute('alt') || '';

      // If image is inside a figure with figcaption, use that caption
      const figure = this.closest('figure');
      if (figure) {
        const figcaption = figure.querySelector('figcaption');
        if (figcaption) {
          caption = figcaption.textContent;
        }
      }

      // Set the lightbox content
      lightboxImg.setAttribute('src', src);
      lightboxCaption.textContent = caption;

      // Show the lightbox
      lightbox.style.display = 'flex';
      document.body.style.overflow = 'hidden'; // Prevent scrolling
    });
  });

  // Close lightbox when clicking the close button or outside the image
  lightboxClose.addEventListener('click', closeLightbox);
  lightbox.addEventListener('click', function (e) {
    if (e.target === lightbox) {
      closeLightbox();
    }
  });

  // Close lightbox when pressing Escape key
  document.addEventListener('keydown', function (e) {
    if (e.key === 'Escape' && lightbox.style.display === 'flex') {
      closeLightbox();
    }
  });

  function closeLightbox() {
    lightbox.style.display = 'none';
    document.body.style.overflow = ''; // Restore scrolling
  }
}); 