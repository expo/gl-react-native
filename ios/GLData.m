#import "GLData.h"

@implementation GLData

-(instancetype)initWithShader: (NSNumber *)shader
                initWithVdata: (NSArray *)vdata
                 withUniforms: (NSDictionary *)uniforms
                    withWidth: (NSNumber *)width
                   withHeight: (NSNumber *)height
               withPixelRatio: (NSNumber *)pixelRatio
                    withFboId: (NSNumber *)fboId
          withContextChildren: (NSArray *)contextChildren
                 withChildren: (NSArray *)children
{
  if ((self = [super init])) {
    self.shader = shader;
    self.vdata = vdata;
    self.uniforms = uniforms;
    self.width = width;
    self.height = height;
    self.pixelRatio = pixelRatio;
    self.fboId = fboId;
    self.contextChildren = contextChildren;
    self.children = children;
  }
  return self;
}

@end
