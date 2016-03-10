#import "GLShader.h"

// GLRenderData is the validated/gl'resolved version of GLData

@interface GLRenderData : NSObject

@property (nonatomic) GLShader *shader;
@property (nonatomic) GLfloat *vdata;
@property (nonatomic) unsigned long vcount;
@property (nonatomic) NSDictionary *uniforms;
@property (nonatomic) NSDictionary *textures;
@property (nonatomic) int width;
@property (nonatomic) int height;
@property (nonatomic) int fboId;
@property (nonatomic) NSArray *contextChildren;
@property (nonatomic) NSArray *children;

-(instancetype) initWithShader: (GLShader *)shader
                     withVdata: (GLfloat *)vdata
                    withVcount: (unsigned long)vcount
                  withUniforms:(NSDictionary *)uniforms
                  withTextures: (NSDictionary *)textures
                     withWidth: (int)width
                    withHeight: (int)height
                     withFboId: (int)fboId
           withContextChildren: (NSArray *)contextChildren
                  withChildren: (NSArray *)children;

@end
