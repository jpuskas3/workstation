#!/bin/bash
cd
source venv/bin/activate
cd workstation
konsole -e --qwindowgeometry 1038x300+50+50 "./intro.sh" & python3 scraper_gui.py & python3 app_gui.py & chromium webstation.html

