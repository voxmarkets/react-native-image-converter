package com.reactlibrary;

import java.awt.image.BufferedImage;
import java.io.File;
import javax.imageio.ImageIO;
import java.io.ByteArrayOutputStream;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNImageConverterModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNImageConverterModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNImageConverter";
  }

  @ReactMethod
  public void convertToPNG(String original, Callback success) {
    String imageFileName = "image-converted-" + UUID.randomUUID().toString();
    File path = Environment.getExternalStoragePublicDirectory(
            Environment.DIRECTORY_PICTURES);
    if (!path.exists() && !path.isDirectory()) {
        path.mkdirs();
    }
    File image = File.createTempFile(imageFileName, ".png", path);
    BufferedImage bufferedImage = ImageIO.read(new File(original));
    ImageIO.write(bufferedImage, "png", image);
    success.invoke(imageFileName);
  }

  @ReactMethod
  public void convertToJPEG(String original,  Callback success) {
    String imageFileName = "image-converted-" + UUID.randomUUID().toString();
    File path = Environment.getExternalStoragePublicDirectory(
            Environment.DIRECTORY_PICTURES);
    if (!path.exists() && !path.isDirectory()) {
        path.mkdirs();
    }
    File image = File.createTempFile(imageFileName, ".jpeg", path);
    BufferedImage bufferedImage = ImageIO.read(new File(original));
    ImageIO.write(bufferedImage, "jpg", image);
    success.invoke(imageFileName);
  }
    
}