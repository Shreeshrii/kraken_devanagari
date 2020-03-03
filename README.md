# kraken_devanagari
Experimental Devanagari Recognition model for [kraken](https://github.com/mittagessen/kraken). 

## devanew_best.mlmodel
Recognizer for Devanagari script for kraken (uses the old `bbox` type segmentation)

### Training

The model was trained using `kraken version 2.0.8` on synthetic training data (line images from ground truth text files and fonts) generated using [tesseract's text2image](https://github.com/tesseract-ocr/tesseract) and [kraken's linegen](https://github.com/mittagessen/kraken/blob/master/kraken/linegen.py). See [log](https://github.com/Shreeshrii/kraken_devanagari/blob/master/devanew.log) for details of training.

* Training set 38761 lines, 
* Validation set 4307 lines, 
* Alphabet 133 symbols. 
* Accuracy on Validation set - 0.9795386542342217.

Sample of training data used is available in `devatrain` and `legacytrain` directories. 

Complete manifest of training data is available in [devanew-manifest.txt](https://github.com/Shreeshrii/kraken_devanagari/blob/master/devanew-manifest.txt).

### Evaluation 

The model was evaluated on similar line images and had average accuracy of approximately 95%.

* devatest - 95.48% Accuracy
* legacytest - 95.48% Accuracy

### Conclusions

The segmentation algorithm of kraken is suited for Latin script and fails for certain types of Devanagari page images. 

The accuracy on page images with typefaces unlike the images in training data will be lower.

The model can be further finetuned based on requirements eg. for one particular font or for one particular scanned book, which will give better accuracy. 
