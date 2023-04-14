import os
import glob
from PIL import Image

def genernateTexture(dir):
    for file in glob.glob(dir + '/textures_high/*[jpg,png]'):
        img = Image.open(file)
        if img.size[0] > 2048:
            img.thumbnail((2048, 1024))
            print(img.format, img.size, img.mode)
            name = os.path.join(dir, 'textures', os.path.basename(file))
            img.save(name, img.format)
    print('done!')

if __name__ == '__main__':
    dir = os.path.abspath(os.path.dirname(__file__))
    genernateTexture(dir)