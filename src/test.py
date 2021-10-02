import ffmpeg
from pathlib import Path
import os


cur_path = os.getcwd()


BASE_DIR = Path(__file__).resolve(strict=True).parent

print(BASE_DIR / 'test.mp4')
print(cur_path)

print(ffmpeg.probe(BASE_DIR / 'test.mp4'))