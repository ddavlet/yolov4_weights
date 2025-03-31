import os

def delete_rotated_files():
    suffixes = ("_r090", "_r180", "_r270")
    for filename in os.listdir():
        name, ext = os.path.splitext(filename)
        if name.endswith(suffixes):
            os.remove(filename)
            print(f"Deleted: {filename}")

if __name__ == "__main__":
    delete_rotated_files()
