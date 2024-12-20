from PIL import Image
import random
import os

output_dir = "generated_images"
os.makedirs(output_dir, exist_ok=True)

def random_color():
    return tuple(random.randint(0, 255) for _ in range(3))

# Generowanie 10 obrazków 10x10 px w losowych kolorach
for i in range(1000):
    color = random_color()
    img = Image.new("RGB", (10, 10), color)
    file_path = os.path.join(output_dir, f"image_{i + 1}.png")
    img.save(file_path, "PNG")
    print(f"Saved: {file_path} with color: {color}")

print("Wszystkie obrazki zostały wygenerowane w folderze:", output_dir)
