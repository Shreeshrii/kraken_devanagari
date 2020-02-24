# kraken_devanagari
Devanagari Recognition model for [kraken](https://github.com/mittagessen/kraken). 

## devatrain_best.mlmodel
`bbox` based recognizer for Devanagari.

### Training

The model was trained using `kraken version 2.0.8` on synthetic training data generated using [tesseract](https://github.com/tesseract-ocr/tesseract), line images (devatrain/*.png) and corresponding ground truth text (devatrain/*.gt.txt).

### Evaluation 

It was evaluated on similar line images (devatest/*.png) and had average accuracy of 93.99%.

### Limitations

The segmentation algorithm of kraken is suited for Latin script and fails for certain types of Devanagari page images. 

The accuracy on page images with typefaces unlike the images in training data will be lower.

