#import "RCTConvert+GLData.h"

@implementation RCTConvert (GLData)

+ (GLData *)GLData:(id)json
{
  json = [self NSDictionary:json];
  
  NSNumber *shader = [self NSNumber:json[@"shader"]];
  NSDictionary *uniforms = [self NSDictionary:json[@"uniforms"]];
  NSNumber *width = [self NSNumber:json[@"width"]];
  NSNumber *height = [self NSNumber:json[@"height"]];
  NSNumber *pixelRatio = [self NSNumber:json[@"pixelRatio"]];
  NSNumber *fboId = [self NSNumber:json[@"fboId"]];
  NSArray *contextChildrenJSON = [self NSArray: json[@"contextChildren"]];
  NSArray *childrenJSON = [self NSArray: json[@"children"]];

  NSMutableArray *vdata = NULL;
  NSObject *vdataJSON = json[@"vdata"];
  if (vdataJSON) {
    vdata = [NSMutableArray array];
    for (NSObject *vJSON in [self NSArray:vdataJSON]) {
      [vdata addObject:[self NSNumber:vJSON]];
    }
  }

  
  NSMutableArray *children = [NSMutableArray array];
  for (NSObject *childJSON in childrenJSON) {
    GLData *child = [self GLData:childJSON];
    [children addObject:child];
  }
  
  NSMutableArray *contextChildren = [NSMutableArray array];
  for (NSObject *childJSON in contextChildrenJSON) {
    GLData *child = [self GLData:childJSON];
    [contextChildren addObject:child];
  }

  return [[GLData alloc] initWithShader: shader
                          initWithVdata: vdata
                           withUniforms: uniforms
                              withWidth: width
                             withHeight: height
                         withPixelRatio: pixelRatio
                              withFboId: fboId
                    withContextChildren: contextChildren
                           withChildren: children];
}

@end
