
#import "RNImageConverter.h"

@implementation RNImageConverter

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(convertToPNG:(NSString *)original
                  callback:(RCTResponseSenderBlock)callback)
{
    NSData *imageData = UIImagePNGRepresentation([UIImage imageWithContentsOfFile:original]);
    NSURL *tmpDirURL = [NSURL fileURLWithPath:NSTemporaryDirectory() isDirectory:YES];
    NSURL *fileURL = [[tmpDirURL URLByAppendingPathComponent:[[NSProcessInfo processInfo] globallyUniqueString]] URLByAppendingPathExtension:@"png"];
    NSString *path = [fileURL path];
    [imageData writeToFile:path atomically:YES];
    callback(@[path]);
}

RCT_EXPORT_METHOD(convertToJPEG:(NSString *)original
                   callback:(RCTResponseSenderBlock)callback)
{
    NSData *imageData = UIImageJPEGRepresentation([UIImage imageWithContentsOfFile:original], 1.0);
    NSURL *tmpDirURL = [NSURL fileURLWithPath:NSTemporaryDirectory() isDirectory:YES];
    NSURL *fileURL = [[tmpDirURL URLByAppendingPathComponent:[[NSProcessInfo processInfo] globallyUniqueString]] URLByAppendingPathExtension:@"jpeg"];
    NSString *path = [fileURL path];
    [imageData writeToFile:path atomically:YES];
    callback(@[path]);
}

@end
  
