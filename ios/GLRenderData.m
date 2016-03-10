#include "GLRenderData.h"

@implementation GLRenderData


-(instancetype) initWithShader: (GLShader *)shader
                     withVdata: (GLfloat *)vdata
                    withVcount: (unsigned long)vcount
                  withUniforms:(NSDictionary *)uniforms
                  withTextures: (NSDictionary *)textures
                     withWidth: (int)width
                    withHeight: (int)height
                     withFboId: (int)fboId
           withContextChildren: (NSArray *)contextChildren
                  withChildren: (NSArray *)children
{
  
  if ((self = [super init])) {
    self.shader = shader;
    self.vdata = vdata;
    self.vcount = vcount;
    self.uniforms = uniforms;
    self.textures = textures;
    self.width = width;
    self.height = height;
    self.fboId = fboId;
    self.contextChildren = contextChildren;
    self.children = children;
  }
  return self;
}

-(void) dealloc {
  if (self.vdata) {
    free(self.vdata);
  }
}

@end