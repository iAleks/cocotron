/* Copyright (c) 2006 Christopher J. W. Lloyd

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. */

#import <AppKit/CGImage.h>
#import <Foundation/NSString.h>
#import "KGImage.h"

KGImage *CGImageRetain(KGImage *image) {
   return [image retain];
}

void CGImageRelease(KGImage *image) {
   [image release];
}

KGImage *CGImageCreate(unsigned width,unsigned height,unsigned bitsPerComponent,unsigned bitsPerPixel,unsigned bytesPerRow,CGColorSpaceRef colorSpace,CGBitmapInfo bitmapInfo,CGDataProviderRef dataProvider,const float *decode,BOOL interpolate,CGColorRenderingIntent renderingIntent) {
   return [[KGImage alloc] initWithWidth:width height:height bitsPerComponent:bitsPerComponent bitsPerPixel:bitsPerPixel bytesPerRow:bytesPerRow colorSpace:colorSpace bitmapInfo:bitmapInfo provider:dataProvider decode:decode interpolate:interpolate renderingIntent:renderingIntent];

}

unsigned CGImageGetWidth(KGImage *image) {
   return [image width];
}

unsigned CGImageGetHeight(KGImage *image) {
   return [image height];
}
