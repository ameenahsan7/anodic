#!/bin/bash
# Run this script from the anodic-v2 folder to download all site images locally.
# Usage: cd anodic-v2 && bash download-images.sh

mkdir -p images

echo "Downloading 12 images..."

curl -sL -o images/hero-smart-building.jpg "https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=1920&q=80"
echo "  1/12  hero-smart-building.jpg"

curl -sL -o images/about-team.jpg "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?auto=format&fit=crop&w=800&q=80"
echo "  2/12  about-team.jpg"

curl -sL -o images/services-office.jpg "https://images.unsplash.com/photo-1497366216548-37526070297c?auto=format&fit=crop&w=800&q=80"
echo "  3/12  services-office.jpg"

curl -sL -o images/services-security.jpg "https://images.unsplash.com/photo-1558002038-1055907df827?auto=format&fit=crop&w=800&q=80"
echo "  4/12  services-security.jpg"

curl -sL -o images/photo-break-dubai.jpg "https://images.unsplash.com/photo-1560179707-f14e90ef3623?auto=format&fit=crop&w=1920&q=80"
echo "  5/12  photo-break-dubai.jpg"

curl -sL -o images/cta-dubai-skyline.jpg "https://images.unsplash.com/photo-1512453979798-5ea266f8880c?auto=format&fit=crop&w=1920&q=80"
echo "  6/12  cta-dubai-skyline.jpg"

curl -sL -o images/project-marina.jpg "https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?auto=format&fit=crop&w=600&q=80"
echo "  7/12  project-marina.jpg"

curl -sL -o images/project-business-bay.jpg "https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?auto=format&fit=crop&w=600&q=80"
echo "  8/12  project-business-bay.jpg"

curl -sL -o images/project-arabian-ranches.jpg "https://images.unsplash.com/photo-1518481612222-68bbe828ecd1?auto=format&fit=crop&w=600&q=80"
echo "  9/12  project-arabian-ranches.jpg"

curl -sL -o images/testimonial-hassan.jpg "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80"
echo "  10/12 testimonial-hassan.jpg"

curl -sL -o images/testimonial-sarah.jpg "https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
echo "  11/12 testimonial-sarah.jpg"

curl -sL -o images/testimonial-ahmed.jpg "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?auto=format&fit=crop&w=100&q=80"
echo "  12/12 testimonial-ahmed.jpg"

echo ""
echo "Done. Verifying file sizes..."
echo ""
ls -lh images/
echo ""
echo "All images saved to images/ folder. Ready for git."
