import os
import shutil

# Set the source and destination directories
src_dir = 'build'
dst_dir = 'expected/build'

# Make sure the destination directory exists
if not os.path.exists(dst_dir):
    os.makedirs(dst_dir)

# Copy all files and subdirectories from the source to the destination directory
for root, dirs, files in os.walk(src_dir):
    for file in files:
        src_path = os.path.join(root, file)
        dst_path = src_path.replace(src_dir, dst_dir, 1)
        shutil.copy2(src_path, dst_path)
    for dir in dirs:
        src_path = os.path.join(root, dir)
        dst_path = src_path.replace(src_dir, dst_dir, 1)
        if not os.path.exists(dst_path):
            os.makedirs(dst_path)