TEXTURE_DIR=pics/textures_high/
TEXTURE_URL=https://www.solarsystemscope.com/textures/download/

all: texture_high texture

texture_high:
	wget -O $(TEXTURE_DIR)sun.jpg $(TEXTURE_URL)8k_sun.jpg
	wget -O $(TEXTURE_DIR)mercury.jpg $(TEXTURE_URL)8k_mercury.jpg
	wget -O $(TEXTURE_DIR)venus.jpg $(TEXTURE_URL)8k_venus_surface.jpg
	wget -O $(TEXTURE_DIR)venus_atmosphere.jpg $(TEXTURE_URL)4k_venus_atmosphere.jpg
	wget -O $(TEXTURE_DIR)earth.jpg $(TEXTURE_URL)8k_earth_daymap.jpg
	wget -O $(TEXTURE_DIR)earth_nightmap.jpg $(TEXTURE_URL)8k_earth_nightmap.jpg
	wget -O $(TEXTURE_DIR)earth_cloud.jpg $(TEXTURE_URL)8k_earth_clouds.jpg
	wget -O $(TEXTURE_DIR)earth_normal.tif $(TEXTURE_URL)8k_earth_normal_map.tif
	wget -O $(TEXTURE_DIR)earth_specular.tif $(TEXTURE_URL)8k_earth_specular_map.tif
	wget -O $(TEXTURE_DIR)mars.jpg $(TEXTURE_URL)8k_mars.jpg
	wget -O $(TEXTURE_DIR)jupiter.jpg $(TEXTURE_URL)8k_jupiter.jpg
	wget -O $(TEXTURE_DIR)saturn.jpg $(TEXTURE_URL)8k_saturn.jpg
	wget -O $(TEXTURE_DIR)uranus.jpg $(TEXTURE_URL)2k_uranus.jpg
	wget -O $(TEXTURE_DIR)neptune.jpg $(TEXTURE_URL)2k_neptune.jpg
	wget -O $(TEXTURE_DIR)moon.jpg $(TEXTURE_URL)8k_moon.jpg
	wget -O $(TEXTURE_DIR)milky_way.jpg $(TEXTURE_URL)8k_stars_milky_way.jpg

texture:
	python pics/texture.py

.PHONY:
	all texture_high texture