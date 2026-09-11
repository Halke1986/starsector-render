package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public final class GL11 {
    public static final int GL_ACCUM = 256;
    public static final int GL_LOAD = 257;
    public static final int GL_RETURN = 258;
    public static final int GL_MULT = 259;
    public static final int GL_ADD = 260;
    public static final int GL_NEVER = 512;
    public static final int GL_LESS = 513;
    public static final int GL_EQUAL = 514;
    public static final int GL_LEQUAL = 515;
    public static final int GL_GREATER = 516;
    public static final int GL_NOTEQUAL = 517;
    public static final int GL_GEQUAL = 518;
    public static final int GL_ALWAYS = 519;
    public static final int GL_CURRENT_BIT = 1;
    public static final int GL_POINT_BIT = 2;
    public static final int GL_LINE_BIT = 4;
    public static final int GL_POLYGON_BIT = 8;
    public static final int GL_POLYGON_STIPPLE_BIT = 16;
    public static final int GL_PIXEL_MODE_BIT = 32;
    public static final int GL_LIGHTING_BIT = 64;
    public static final int GL_FOG_BIT = 128;
    public static final int GL_DEPTH_BUFFER_BIT = 256;
    public static final int GL_ACCUM_BUFFER_BIT = 512;
    public static final int GL_STENCIL_BUFFER_BIT = 1024;
    public static final int GL_VIEWPORT_BIT = 2048;
    public static final int GL_TRANSFORM_BIT = 4096;
    public static final int GL_ENABLE_BIT = 8192;
    public static final int GL_COLOR_BUFFER_BIT = 16384;
    public static final int GL_HINT_BIT = 32768;
    public static final int GL_EVAL_BIT = 65536;
    public static final int GL_LIST_BIT = 131072;
    public static final int GL_TEXTURE_BIT = 262144;
    public static final int GL_SCISSOR_BIT = 524288;
    public static final int GL_ALL_ATTRIB_BITS = 1048575;
    public static final int GL_POINTS = 0;
    public static final int GL_LINES = 1;
    public static final int GL_LINE_LOOP = 2;
    public static final int GL_LINE_STRIP = 3;
    public static final int GL_TRIANGLES = 4;
    public static final int GL_TRIANGLE_STRIP = 5;
    public static final int GL_TRIANGLE_FAN = 6;
    public static final int GL_QUADS = 7;
    public static final int GL_QUAD_STRIP = 8;
    public static final int GL_POLYGON = 9;
    public static final int GL_ZERO = 0;
    public static final int GL_ONE = 1;
    public static final int GL_SRC_COLOR = 768;
    public static final int GL_ONE_MINUS_SRC_COLOR = 769;
    public static final int GL_SRC_ALPHA = 770;
    public static final int GL_ONE_MINUS_SRC_ALPHA = 771;
    public static final int GL_DST_ALPHA = 772;
    public static final int GL_ONE_MINUS_DST_ALPHA = 773;
    public static final int GL_DST_COLOR = 774;
    public static final int GL_ONE_MINUS_DST_COLOR = 775;
    public static final int GL_SRC_ALPHA_SATURATE = 776;
    public static final int GL_CONSTANT_COLOR = 32769;
    public static final int GL_ONE_MINUS_CONSTANT_COLOR = 32770;
    public static final int GL_CONSTANT_ALPHA = 32771;
    public static final int GL_ONE_MINUS_CONSTANT_ALPHA = 32772;
    public static final int GL_TRUE = 1;
    public static final int GL_FALSE = 0;
    public static final int GL_CLIP_PLANE0 = 12288;
    public static final int GL_CLIP_PLANE1 = 12289;
    public static final int GL_CLIP_PLANE2 = 12290;
    public static final int GL_CLIP_PLANE3 = 12291;
    public static final int GL_CLIP_PLANE4 = 12292;
    public static final int GL_CLIP_PLANE5 = 12293;
    public static final int GL_BYTE = 5120;
    public static final int GL_UNSIGNED_BYTE = 5121;
    public static final int GL_SHORT = 5122;
    public static final int GL_UNSIGNED_SHORT = 5123;
    public static final int GL_INT = 5124;
    public static final int GL_UNSIGNED_INT = 5125;
    public static final int GL_FLOAT = 5126;
    public static final int GL_2_BYTES = 5127;
    public static final int GL_3_BYTES = 5128;
    public static final int GL_4_BYTES = 5129;
    public static final int GL_DOUBLE = 5130;
    public static final int GL_NONE = 0;
    public static final int GL_FRONT_LEFT = 1024;
    public static final int GL_FRONT_RIGHT = 1025;
    public static final int GL_BACK_LEFT = 1026;
    public static final int GL_BACK_RIGHT = 1027;
    public static final int GL_FRONT = 1028;
    public static final int GL_BACK = 1029;
    public static final int GL_LEFT = 1030;
    public static final int GL_RIGHT = 1031;
    public static final int GL_FRONT_AND_BACK = 1032;
    public static final int GL_AUX0 = 1033;
    public static final int GL_AUX1 = 1034;
    public static final int GL_AUX2 = 1035;
    public static final int GL_AUX3 = 1036;
    public static final int GL_NO_ERROR = 0;
    public static final int GL_INVALID_ENUM = 1280;
    public static final int GL_INVALID_VALUE = 1281;
    public static final int GL_INVALID_OPERATION = 1282;
    public static final int GL_STACK_OVERFLOW = 1283;
    public static final int GL_STACK_UNDERFLOW = 1284;
    public static final int GL_OUT_OF_MEMORY = 1285;
    public static final int GL_2D = 1536;
    public static final int GL_3D = 1537;
    public static final int GL_3D_COLOR = 1538;
    public static final int GL_3D_COLOR_TEXTURE = 1539;
    public static final int GL_4D_COLOR_TEXTURE = 1540;
    public static final int GL_PASS_THROUGH_TOKEN = 1792;
    public static final int GL_POINT_TOKEN = 1793;
    public static final int GL_LINE_TOKEN = 1794;
    public static final int GL_POLYGON_TOKEN = 1795;
    public static final int GL_BITMAP_TOKEN = 1796;
    public static final int GL_DRAW_PIXEL_TOKEN = 1797;
    public static final int GL_COPY_PIXEL_TOKEN = 1798;
    public static final int GL_LINE_RESET_TOKEN = 1799;
    public static final int GL_EXP = 2048;
    public static final int GL_EXP2 = 2049;
    public static final int GL_CW = 2304;
    public static final int GL_CCW = 2305;
    public static final int GL_COEFF = 2560;
    public static final int GL_ORDER = 2561;
    public static final int GL_DOMAIN = 2562;
    public static final int GL_CURRENT_COLOR = 2816;
    public static final int GL_CURRENT_INDEX = 2817;
    public static final int GL_CURRENT_NORMAL = 2818;
    public static final int GL_CURRENT_TEXTURE_COORDS = 2819;
    public static final int GL_CURRENT_RASTER_COLOR = 2820;
    public static final int GL_CURRENT_RASTER_INDEX = 2821;
    public static final int GL_CURRENT_RASTER_TEXTURE_COORDS = 2822;
    public static final int GL_CURRENT_RASTER_POSITION = 2823;
    public static final int GL_CURRENT_RASTER_POSITION_VALID = 2824;
    public static final int GL_CURRENT_RASTER_DISTANCE = 2825;
    public static final int GL_POINT_SMOOTH = 2832;
    public static final int GL_POINT_SIZE = 2833;
    public static final int GL_POINT_SIZE_RANGE = 2834;
    public static final int GL_POINT_SIZE_GRANULARITY = 2835;
    public static final int GL_LINE_SMOOTH = 2848;
    public static final int GL_LINE_WIDTH = 2849;
    public static final int GL_LINE_WIDTH_RANGE = 2850;
    public static final int GL_LINE_WIDTH_GRANULARITY = 2851;
    public static final int GL_LINE_STIPPLE = 2852;
    public static final int GL_LINE_STIPPLE_PATTERN = 2853;
    public static final int GL_LINE_STIPPLE_REPEAT = 2854;
    public static final int GL_LIST_MODE = 2864;
    public static final int GL_MAX_LIST_NESTING = 2865;
    public static final int GL_LIST_BASE = 2866;
    public static final int GL_LIST_INDEX = 2867;
    public static final int GL_POLYGON_MODE = 2880;
    public static final int GL_POLYGON_SMOOTH = 2881;
    public static final int GL_POLYGON_STIPPLE = 2882;
    public static final int GL_EDGE_FLAG = 2883;
    public static final int GL_CULL_FACE = 2884;
    public static final int GL_CULL_FACE_MODE = 2885;
    public static final int GL_FRONT_FACE = 2886;
    public static final int GL_LIGHTING = 2896;
    public static final int GL_LIGHT_MODEL_LOCAL_VIEWER = 2897;
    public static final int GL_LIGHT_MODEL_TWO_SIDE = 2898;
    public static final int GL_LIGHT_MODEL_AMBIENT = 2899;
    public static final int GL_SHADE_MODEL = 2900;
    public static final int GL_COLOR_MATERIAL_FACE = 2901;
    public static final int GL_COLOR_MATERIAL_PARAMETER = 2902;
    public static final int GL_COLOR_MATERIAL = 2903;
    public static final int GL_FOG = 2912;
    public static final int GL_FOG_INDEX = 2913;
    public static final int GL_FOG_DENSITY = 2914;
    public static final int GL_FOG_START = 2915;
    public static final int GL_FOG_END = 2916;
    public static final int GL_FOG_MODE = 2917;
    public static final int GL_FOG_COLOR = 2918;
    public static final int GL_DEPTH_RANGE = 2928;
    public static final int GL_DEPTH_TEST = 2929;
    public static final int GL_DEPTH_WRITEMASK = 2930;
    public static final int GL_DEPTH_CLEAR_VALUE = 2931;
    public static final int GL_DEPTH_FUNC = 2932;
    public static final int GL_ACCUM_CLEAR_VALUE = 2944;
    public static final int GL_STENCIL_TEST = 2960;
    public static final int GL_STENCIL_CLEAR_VALUE = 2961;
    public static final int GL_STENCIL_FUNC = 2962;
    public static final int GL_STENCIL_VALUE_MASK = 2963;
    public static final int GL_STENCIL_FAIL = 2964;
    public static final int GL_STENCIL_PASS_DEPTH_FAIL = 2965;
    public static final int GL_STENCIL_PASS_DEPTH_PASS = 2966;
    public static final int GL_STENCIL_REF = 2967;
    public static final int GL_STENCIL_WRITEMASK = 2968;
    public static final int GL_MATRIX_MODE = 2976;
    public static final int GL_NORMALIZE = 2977;
    public static final int GL_VIEWPORT = 2978;
    public static final int GL_MODELVIEW_STACK_DEPTH = 2979;
    public static final int GL_PROJECTION_STACK_DEPTH = 2980;
    public static final int GL_TEXTURE_STACK_DEPTH = 2981;
    public static final int GL_MODELVIEW_MATRIX = 2982;
    public static final int GL_PROJECTION_MATRIX = 2983;
    public static final int GL_TEXTURE_MATRIX = 2984;
    public static final int GL_ATTRIB_STACK_DEPTH = 2992;
    public static final int GL_CLIENT_ATTRIB_STACK_DEPTH = 2993;
    public static final int GL_ALPHA_TEST = 3008;
    public static final int GL_ALPHA_TEST_FUNC = 3009;
    public static final int GL_ALPHA_TEST_REF = 3010;
    public static final int GL_DITHER = 3024;
    public static final int GL_BLEND_DST = 3040;
    public static final int GL_BLEND_SRC = 3041;
    public static final int GL_BLEND = 3042;
    public static final int GL_LOGIC_OP_MODE = 3056;
    public static final int GL_INDEX_LOGIC_OP = 3057;
    public static final int GL_COLOR_LOGIC_OP = 3058;
    public static final int GL_AUX_BUFFERS = 3072;
    public static final int GL_DRAW_BUFFER = 3073;
    public static final int GL_READ_BUFFER = 3074;
    public static final int GL_SCISSOR_BOX = 3088;
    public static final int GL_SCISSOR_TEST = 3089;
    public static final int GL_INDEX_CLEAR_VALUE = 3104;
    public static final int GL_INDEX_WRITEMASK = 3105;
    public static final int GL_COLOR_CLEAR_VALUE = 3106;
    public static final int GL_COLOR_WRITEMASK = 3107;
    public static final int GL_INDEX_MODE = 3120;
    public static final int GL_RGBA_MODE = 3121;
    public static final int GL_DOUBLEBUFFER = 3122;
    public static final int GL_STEREO = 3123;
    public static final int GL_RENDER_MODE = 3136;
    public static final int GL_PERSPECTIVE_CORRECTION_HINT = 3152;
    public static final int GL_POINT_SMOOTH_HINT = 3153;
    public static final int GL_LINE_SMOOTH_HINT = 3154;
    public static final int GL_POLYGON_SMOOTH_HINT = 3155;
    public static final int GL_FOG_HINT = 3156;
    public static final int GL_TEXTURE_GEN_S = 3168;
    public static final int GL_TEXTURE_GEN_T = 3169;
    public static final int GL_TEXTURE_GEN_R = 3170;
    public static final int GL_TEXTURE_GEN_Q = 3171;
    public static final int GL_PIXEL_MAP_I_TO_I = 3184;
    public static final int GL_PIXEL_MAP_S_TO_S = 3185;
    public static final int GL_PIXEL_MAP_I_TO_R = 3186;
    public static final int GL_PIXEL_MAP_I_TO_G = 3187;
    public static final int GL_PIXEL_MAP_I_TO_B = 3188;
    public static final int GL_PIXEL_MAP_I_TO_A = 3189;
    public static final int GL_PIXEL_MAP_R_TO_R = 3190;
    public static final int GL_PIXEL_MAP_G_TO_G = 3191;
    public static final int GL_PIXEL_MAP_B_TO_B = 3192;
    public static final int GL_PIXEL_MAP_A_TO_A = 3193;
    public static final int GL_PIXEL_MAP_I_TO_I_SIZE = 3248;
    public static final int GL_PIXEL_MAP_S_TO_S_SIZE = 3249;
    public static final int GL_PIXEL_MAP_I_TO_R_SIZE = 3250;
    public static final int GL_PIXEL_MAP_I_TO_G_SIZE = 3251;
    public static final int GL_PIXEL_MAP_I_TO_B_SIZE = 3252;
    public static final int GL_PIXEL_MAP_I_TO_A_SIZE = 3253;
    public static final int GL_PIXEL_MAP_R_TO_R_SIZE = 3254;
    public static final int GL_PIXEL_MAP_G_TO_G_SIZE = 3255;
    public static final int GL_PIXEL_MAP_B_TO_B_SIZE = 3256;
    public static final int GL_PIXEL_MAP_A_TO_A_SIZE = 3257;
    public static final int GL_UNPACK_SWAP_BYTES = 3312;
    public static final int GL_UNPACK_LSB_FIRST = 3313;
    public static final int GL_UNPACK_ROW_LENGTH = 3314;
    public static final int GL_UNPACK_SKIP_ROWS = 3315;
    public static final int GL_UNPACK_SKIP_PIXELS = 3316;
    public static final int GL_UNPACK_ALIGNMENT = 3317;
    public static final int GL_PACK_SWAP_BYTES = 3328;
    public static final int GL_PACK_LSB_FIRST = 3329;
    public static final int GL_PACK_ROW_LENGTH = 3330;
    public static final int GL_PACK_SKIP_ROWS = 3331;
    public static final int GL_PACK_SKIP_PIXELS = 3332;
    public static final int GL_PACK_ALIGNMENT = 3333;
    public static final int GL_MAP_COLOR = 3344;
    public static final int GL_MAP_STENCIL = 3345;
    public static final int GL_INDEX_SHIFT = 3346;
    public static final int GL_INDEX_OFFSET = 3347;
    public static final int GL_RED_SCALE = 3348;
    public static final int GL_RED_BIAS = 3349;
    public static final int GL_ZOOM_X = 3350;
    public static final int GL_ZOOM_Y = 3351;
    public static final int GL_GREEN_SCALE = 3352;
    public static final int GL_GREEN_BIAS = 3353;
    public static final int GL_BLUE_SCALE = 3354;
    public static final int GL_BLUE_BIAS = 3355;
    public static final int GL_ALPHA_SCALE = 3356;
    public static final int GL_ALPHA_BIAS = 3357;
    public static final int GL_DEPTH_SCALE = 3358;
    public static final int GL_DEPTH_BIAS = 3359;
    public static final int GL_MAX_EVAL_ORDER = 3376;
    public static final int GL_MAX_LIGHTS = 3377;
    public static final int GL_MAX_CLIP_PLANES = 3378;
    public static final int GL_MAX_TEXTURE_SIZE = 3379;
    public static final int GL_MAX_PIXEL_MAP_TABLE = 3380;
    public static final int GL_MAX_ATTRIB_STACK_DEPTH = 3381;
    public static final int GL_MAX_MODELVIEW_STACK_DEPTH = 3382;
    public static final int GL_MAX_NAME_STACK_DEPTH = 3383;
    public static final int GL_MAX_PROJECTION_STACK_DEPTH = 3384;
    public static final int GL_MAX_TEXTURE_STACK_DEPTH = 3385;
    public static final int GL_MAX_VIEWPORT_DIMS = 3386;
    public static final int GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 3387;
    public static final int GL_SUBPIXEL_BITS = 3408;
    public static final int GL_INDEX_BITS = 3409;
    public static final int GL_RED_BITS = 3410;
    public static final int GL_GREEN_BITS = 3411;
    public static final int GL_BLUE_BITS = 3412;
    public static final int GL_ALPHA_BITS = 3413;
    public static final int GL_DEPTH_BITS = 3414;
    public static final int GL_STENCIL_BITS = 3415;
    public static final int GL_ACCUM_RED_BITS = 3416;
    public static final int GL_ACCUM_GREEN_BITS = 3417;
    public static final int GL_ACCUM_BLUE_BITS = 3418;
    public static final int GL_ACCUM_ALPHA_BITS = 3419;
    public static final int GL_NAME_STACK_DEPTH = 3440;
    public static final int GL_AUTO_NORMAL = 3456;
    public static final int GL_MAP1_COLOR_4 = 3472;
    public static final int GL_MAP1_INDEX = 3473;
    public static final int GL_MAP1_NORMAL = 3474;
    public static final int GL_MAP1_TEXTURE_COORD_1 = 3475;
    public static final int GL_MAP1_TEXTURE_COORD_2 = 3476;
    public static final int GL_MAP1_TEXTURE_COORD_3 = 3477;
    public static final int GL_MAP1_TEXTURE_COORD_4 = 3478;
    public static final int GL_MAP1_VERTEX_3 = 3479;
    public static final int GL_MAP1_VERTEX_4 = 3480;
    public static final int GL_MAP2_COLOR_4 = 3504;
    public static final int GL_MAP2_INDEX = 3505;
    public static final int GL_MAP2_NORMAL = 3506;
    public static final int GL_MAP2_TEXTURE_COORD_1 = 3507;
    public static final int GL_MAP2_TEXTURE_COORD_2 = 3508;
    public static final int GL_MAP2_TEXTURE_COORD_3 = 3509;
    public static final int GL_MAP2_TEXTURE_COORD_4 = 3510;
    public static final int GL_MAP2_VERTEX_3 = 3511;
    public static final int GL_MAP2_VERTEX_4 = 3512;
    public static final int GL_MAP1_GRID_DOMAIN = 3536;
    public static final int GL_MAP1_GRID_SEGMENTS = 3537;
    public static final int GL_MAP2_GRID_DOMAIN = 3538;
    public static final int GL_MAP2_GRID_SEGMENTS = 3539;
    public static final int GL_TEXTURE_1D = 3552;
    public static final int GL_TEXTURE_2D = 3553;
    public static final int GL_FEEDBACK_BUFFER_POINTER = 3568;
    public static final int GL_FEEDBACK_BUFFER_SIZE = 3569;
    public static final int GL_FEEDBACK_BUFFER_TYPE = 3570;
    public static final int GL_SELECTION_BUFFER_POINTER = 3571;
    public static final int GL_SELECTION_BUFFER_SIZE = 3572;
    public static final int GL_TEXTURE_WIDTH = 4096;
    public static final int GL_TEXTURE_HEIGHT = 4097;
    public static final int GL_TEXTURE_INTERNAL_FORMAT = 4099;
    public static final int GL_TEXTURE_BORDER_COLOR = 4100;
    public static final int GL_TEXTURE_BORDER = 4101;
    public static final int GL_DONT_CARE = 4352;
    public static final int GL_FASTEST = 4353;
    public static final int GL_NICEST = 4354;
    public static final int GL_LIGHT0 = 16384;
    public static final int GL_LIGHT1 = 16385;
    public static final int GL_LIGHT2 = 16386;
    public static final int GL_LIGHT3 = 16387;
    public static final int GL_LIGHT4 = 16388;
    public static final int GL_LIGHT5 = 16389;
    public static final int GL_LIGHT6 = 16390;
    public static final int GL_LIGHT7 = 16391;
    public static final int GL_AMBIENT = 4608;
    public static final int GL_DIFFUSE = 4609;
    public static final int GL_SPECULAR = 4610;
    public static final int GL_POSITION = 4611;
    public static final int GL_SPOT_DIRECTION = 4612;
    public static final int GL_SPOT_EXPONENT = 4613;
    public static final int GL_SPOT_CUTOFF = 4614;
    public static final int GL_CONSTANT_ATTENUATION = 4615;
    public static final int GL_LINEAR_ATTENUATION = 4616;
    public static final int GL_QUADRATIC_ATTENUATION = 4617;
    public static final int GL_COMPILE = 4864;
    public static final int GL_COMPILE_AND_EXECUTE = 4865;
    public static final int GL_CLEAR = 5376;
    public static final int GL_AND = 5377;
    public static final int GL_AND_REVERSE = 5378;
    public static final int GL_COPY = 5379;
    public static final int GL_AND_INVERTED = 5380;
    public static final int GL_NOOP = 5381;
    public static final int GL_XOR = 5382;
    public static final int GL_OR = 5383;
    public static final int GL_NOR = 5384;
    public static final int GL_EQUIV = 5385;
    public static final int GL_INVERT = 5386;
    public static final int GL_OR_REVERSE = 5387;
    public static final int GL_COPY_INVERTED = 5388;
    public static final int GL_OR_INVERTED = 5389;
    public static final int GL_NAND = 5390;
    public static final int GL_SET = 5391;
    public static final int GL_EMISSION = 5632;
    public static final int GL_SHININESS = 5633;
    public static final int GL_AMBIENT_AND_DIFFUSE = 5634;
    public static final int GL_COLOR_INDEXES = 5635;
    public static final int GL_MODELVIEW = 5888;
    public static final int GL_PROJECTION = 5889;
    public static final int GL_TEXTURE = 5890;
    public static final int GL_COLOR = 6144;
    public static final int GL_DEPTH = 6145;
    public static final int GL_STENCIL = 6146;
    public static final int GL_COLOR_INDEX = 6400;
    public static final int GL_STENCIL_INDEX = 6401;
    public static final int GL_DEPTH_COMPONENT = 6402;
    public static final int GL_RED = 6403;
    public static final int GL_GREEN = 6404;
    public static final int GL_BLUE = 6405;
    public static final int GL_ALPHA = 6406;
    public static final int GL_RGB = 6407;
    public static final int GL_RGBA = 6408;
    public static final int GL_LUMINANCE = 6409;
    public static final int GL_LUMINANCE_ALPHA = 6410;
    public static final int GL_BITMAP = 6656;
    public static final int GL_POINT = 6912;
    public static final int GL_LINE = 6913;
    public static final int GL_FILL = 6914;
    public static final int GL_RENDER = 7168;
    public static final int GL_FEEDBACK = 7169;
    public static final int GL_SELECT = 7170;
    public static final int GL_FLAT = 7424;
    public static final int GL_SMOOTH = 7425;
    public static final int GL_KEEP = 7680;
    public static final int GL_REPLACE = 7681;
    public static final int GL_INCR = 7682;
    public static final int GL_DECR = 7683;
    public static final int GL_VENDOR = 7936;
    public static final int GL_RENDERER = 7937;
    public static final int GL_VERSION = 7938;
    public static final int GL_EXTENSIONS = 7939;
    public static final int GL_S = 8192;
    public static final int GL_T = 8193;
    public static final int GL_R = 8194;
    public static final int GL_Q = 8195;
    public static final int GL_MODULATE = 8448;
    public static final int GL_DECAL = 8449;
    public static final int GL_TEXTURE_ENV_MODE = 8704;
    public static final int GL_TEXTURE_ENV_COLOR = 8705;
    public static final int GL_TEXTURE_ENV = 8960;
    public static final int GL_EYE_LINEAR = 9216;
    public static final int GL_OBJECT_LINEAR = 9217;
    public static final int GL_SPHERE_MAP = 9218;
    public static final int GL_TEXTURE_GEN_MODE = 9472;
    public static final int GL_OBJECT_PLANE = 9473;
    public static final int GL_EYE_PLANE = 9474;
    public static final int GL_NEAREST = 9728;
    public static final int GL_LINEAR = 9729;
    public static final int GL_NEAREST_MIPMAP_NEAREST = 9984;
    public static final int GL_LINEAR_MIPMAP_NEAREST = 9985;
    public static final int GL_NEAREST_MIPMAP_LINEAR = 9986;
    public static final int GL_LINEAR_MIPMAP_LINEAR = 9987;
    public static final int GL_TEXTURE_MAG_FILTER = 10240;
    public static final int GL_TEXTURE_MIN_FILTER = 10241;
    public static final int GL_TEXTURE_WRAP_S = 10242;
    public static final int GL_TEXTURE_WRAP_T = 10243;
    public static final int GL_CLAMP = 10496;
    public static final int GL_REPEAT = 10497;
    public static final int GL_CLIENT_PIXEL_STORE_BIT = 1;
    public static final int GL_CLIENT_VERTEX_ARRAY_BIT = 2;
    public static final int GL_ALL_CLIENT_ATTRIB_BITS = -1;
    public static final int GL_POLYGON_OFFSET_FACTOR = 32824;
    public static final int GL_POLYGON_OFFSET_UNITS = 10752;
    public static final int GL_POLYGON_OFFSET_POINT = 10753;
    public static final int GL_POLYGON_OFFSET_LINE = 10754;
    public static final int GL_POLYGON_OFFSET_FILL = 32823;
    public static final int GL_ALPHA4 = 32827;
    public static final int GL_ALPHA8 = 32828;
    public static final int GL_ALPHA12 = 32829;
    public static final int GL_ALPHA16 = 32830;
    public static final int GL_LUMINANCE4 = 32831;
    public static final int GL_LUMINANCE8 = 32832;
    public static final int GL_LUMINANCE12 = 32833;
    public static final int GL_LUMINANCE16 = 32834;
    public static final int GL_LUMINANCE4_ALPHA4 = 32835;
    public static final int GL_LUMINANCE6_ALPHA2 = 32836;
    public static final int GL_LUMINANCE8_ALPHA8 = 32837;
    public static final int GL_LUMINANCE12_ALPHA4 = 32838;
    public static final int GL_LUMINANCE12_ALPHA12 = 32839;
    public static final int GL_LUMINANCE16_ALPHA16 = 32840;
    public static final int GL_INTENSITY = 32841;
    public static final int GL_INTENSITY4 = 32842;
    public static final int GL_INTENSITY8 = 32843;
    public static final int GL_INTENSITY12 = 32844;
    public static final int GL_INTENSITY16 = 32845;
    public static final int GL_R3_G3_B2 = 10768;
    public static final int GL_RGB4 = 32847;
    public static final int GL_RGB5 = 32848;
    public static final int GL_RGB8 = 32849;
    public static final int GL_RGB10 = 32850;
    public static final int GL_RGB12 = 32851;
    public static final int GL_RGB16 = 32852;
    public static final int GL_RGBA2 = 32853;
    public static final int GL_RGBA4 = 32854;
    public static final int GL_RGB5_A1 = 32855;
    public static final int GL_RGBA8 = 32856;
    public static final int GL_RGB10_A2 = 32857;
    public static final int GL_RGBA12 = 32858;
    public static final int GL_RGBA16 = 32859;
    public static final int GL_TEXTURE_RED_SIZE = 32860;
    public static final int GL_TEXTURE_GREEN_SIZE = 32861;
    public static final int GL_TEXTURE_BLUE_SIZE = 32862;
    public static final int GL_TEXTURE_ALPHA_SIZE = 32863;
    public static final int GL_TEXTURE_LUMINANCE_SIZE = 32864;
    public static final int GL_TEXTURE_INTENSITY_SIZE = 32865;
    public static final int GL_PROXY_TEXTURE_1D = 32867;
    public static final int GL_PROXY_TEXTURE_2D = 32868;
    public static final int GL_TEXTURE_PRIORITY = 32870;
    public static final int GL_TEXTURE_RESIDENT = 32871;
    public static final int GL_TEXTURE_BINDING_1D = 32872;
    public static final int GL_TEXTURE_BINDING_2D = 32873;
    public static final int GL_VERTEX_ARRAY = 32884;
    public static final int GL_NORMAL_ARRAY = 32885;
    public static final int GL_COLOR_ARRAY = 32886;
    public static final int GL_INDEX_ARRAY = 32887;
    public static final int GL_TEXTURE_COORD_ARRAY = 32888;
    public static final int GL_EDGE_FLAG_ARRAY = 32889;
    public static final int GL_VERTEX_ARRAY_SIZE = 32890;
    public static final int GL_VERTEX_ARRAY_TYPE = 32891;
    public static final int GL_VERTEX_ARRAY_STRIDE = 32892;
    public static final int GL_NORMAL_ARRAY_TYPE = 32894;
    public static final int GL_NORMAL_ARRAY_STRIDE = 32895;
    public static final int GL_COLOR_ARRAY_SIZE = 32897;
    public static final int GL_COLOR_ARRAY_TYPE = 32898;
    public static final int GL_COLOR_ARRAY_STRIDE = 32899;
    public static final int GL_INDEX_ARRAY_TYPE = 32901;
    public static final int GL_INDEX_ARRAY_STRIDE = 32902;
    public static final int GL_TEXTURE_COORD_ARRAY_SIZE = 32904;
    public static final int GL_TEXTURE_COORD_ARRAY_TYPE = 32905;
    public static final int GL_TEXTURE_COORD_ARRAY_STRIDE = 32906;
    public static final int GL_EDGE_FLAG_ARRAY_STRIDE = 32908;
    public static final int GL_VERTEX_ARRAY_POINTER = 32910;
    public static final int GL_NORMAL_ARRAY_POINTER = 32911;
    public static final int GL_COLOR_ARRAY_POINTER = 32912;
    public static final int GL_INDEX_ARRAY_POINTER = 32913;
    public static final int GL_TEXTURE_COORD_ARRAY_POINTER = 32914;
    public static final int GL_EDGE_FLAG_ARRAY_POINTER = 32915;
    public static final int GL_V2F = 10784;
    public static final int GL_V3F = 10785;
    public static final int GL_C4UB_V2F = 10786;
    public static final int GL_C4UB_V3F = 10787;
    public static final int GL_C3F_V3F = 10788;
    public static final int GL_N3F_V3F = 10789;
    public static final int GL_C4F_N3F_V3F = 10790;
    public static final int GL_T2F_V3F = 10791;
    public static final int GL_T4F_V4F = 10792;
    public static final int GL_T2F_C4UB_V3F = 10793;
    public static final int GL_T2F_C3F_V3F = 10794;
    public static final int GL_T2F_N3F_V3F = 10795;
    public static final int GL_T2F_C4F_N3F_V3F = 10796;
    public static final int GL_T4F_C4F_N3F_V4F = 10797;
    public static final int GL_LOGIC_OP = 3057;
    public static final int GL_TEXTURE_COMPONENTS = 4099;

    public static void glAccum(int op, float value) {
        throw new UnsupportedOperationException();
    }

    public static void glAlphaFunc(int func, float ref) {
        com.genir.renderer.bridge.commands.GL11.glAlphaFunc(func, ref);
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        com.genir.renderer.bridge.commands.GL11.glClearColor(red, green, blue, alpha);
    }

    public static void glClearAccum(float red, float green, float blue, float alpha) {
        throw new UnsupportedOperationException();
    }

    public static void glClear(int mask) {
        com.genir.renderer.bridge.commands.GL11.glClear(mask);
    }

    public static void glCallLists(ByteBuffer lists) {
        throw new UnsupportedOperationException();
    }

    public static void glCallLists(IntBuffer lists) {
        throw new UnsupportedOperationException();
    }

    public static void glCallLists(ShortBuffer lists) {
        throw new UnsupportedOperationException();
    }

    public static void glCallList(int list) {
        com.genir.renderer.bridge.commands.GL11.glCallList(list);
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(sfactor, dfactor);
    }

    public static void glBitmap(int width, int height, float xorig, float yorig, float xmove, float ymove, ByteBuffer bitmap) {
        throw new UnsupportedOperationException();
    }

    public static void glBitmap(int width, int height, float xorig, float yorig, float xmove, float ymove, long bitmap_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glBindTexture(int target, int texture) {
        com.genir.renderer.bridge.commands.GL11.glBindTexture(target, texture);
    }

    public static void glPrioritizeTextures(IntBuffer textures, FloatBuffer priorities) {
        throw new UnsupportedOperationException();
    }

    public static boolean glAreTexturesResident(IntBuffer textures, ByteBuffer residences) {
        throw new UnsupportedOperationException();
    }

    public static void glBegin(int mode) {
        com.genir.renderer.bridge.commands.GL11.glBegin(mode);
    }

    public static void glEnd() {
        com.genir.renderer.bridge.commands.GL11.glEnd();
    }

    public static void glArrayElement(int i) {
        throw new UnsupportedOperationException();
    }

    public static void glClearDepth(double depth) {
        com.genir.renderer.bridge.commands.GL11.glClearDepth(depth);
    }

    public static void glDeleteLists(int list, int range) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteTextures(IntBuffer textures) {
        com.genir.renderer.bridge.commands.GL11.glDeleteTextures(textures);
    }

    public static void glDeleteTextures(int texture) {
        com.genir.renderer.bridge.commands.GL11.glDeleteTextures(texture);
    }

    public static void glCullFace(int mode) {
        com.genir.renderer.bridge.commands.GL11.glCullFace(mode);
    }

    public static void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
        com.genir.renderer.bridge.commands.GL11.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
    }

    public static void glCopyTexSubImage1D(int target, int level, int xoffset, int x, int y, int width) {
        throw new UnsupportedOperationException();
    }

    public static void glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) {
        com.genir.renderer.bridge.commands.GL11.glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border);
    }

    public static void glCopyTexImage1D(int target, int level, int internalFormat, int x, int y, int width, int border) {
        throw new UnsupportedOperationException();
    }

    public static void glCopyPixels(int x, int y, int width, int height, int type) {
        throw new UnsupportedOperationException();
    }

    public static void glColorPointer(int size, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glColorPointer(int size, int stride, FloatBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glColorPointer(size, stride, pointer);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glColorPointer(size, unsigned, stride, pointer);
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) {
        com.genir.renderer.bridge.commands.GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glColorPointer(int size, int type, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glColorMaterial(int face, int mode) {
        com.genir.renderer.bridge.commands.GL11.glColorMaterial(face, mode);
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        com.genir.renderer.bridge.commands.GL11.glColorMask(red, green, blue, alpha);
    }

    public static void glColor3b(byte red, byte green, byte blue) {
        throw new UnsupportedOperationException();
    }

    public static void glColor3f(float red, float green, float blue) {
        com.genir.renderer.bridge.commands.GL11.glColor3f(red, green, blue);
    }

    public static void glColor3d(double red, double green, double blue) {
        com.genir.renderer.bridge.commands.GL11.glColor3d(red, green, blue);
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        com.genir.renderer.bridge.commands.GL11.glColor3ub(red, green, blue);
    }

    public static void glColor4b(byte red, byte green, byte blue, byte alpha) {
        throw new UnsupportedOperationException();
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        com.genir.renderer.bridge.commands.GL11.glColor4f(red, green, blue, alpha);
    }

    public static void glColor4d(double red, double green, double blue, double alpha) {
        throw new UnsupportedOperationException();
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        com.genir.renderer.bridge.commands.GL11.glColor4ub(red, green, blue, alpha);
    }

    public static void glClipPlane(int plane, DoubleBuffer equation) {
        throw new UnsupportedOperationException();
    }

    public static void glClearStencil(int s) {
        com.genir.renderer.bridge.commands.GL11.glClearStencil(s);
    }

    public static void glEvalPoint1(int i) {
        throw new UnsupportedOperationException();
    }

    public static void glEvalPoint2(int i, int j) {
        throw new UnsupportedOperationException();
    }

    public static void glEvalMesh1(int mode, int i1, int i2) {
        throw new UnsupportedOperationException();
    }

    public static void glEvalMesh2(int mode, int i1, int i2, int j1, int j2) {
        throw new UnsupportedOperationException();
    }

    public static void glEvalCoord1f(float u) {
        throw new UnsupportedOperationException();
    }

    public static void glEvalCoord1d(double u) {
        throw new UnsupportedOperationException();
    }

    public static void glEvalCoord2f(float u, float v) {
        throw new UnsupportedOperationException();
    }

    public static void glEvalCoord2d(double u, double v) {
        throw new UnsupportedOperationException();
    }

    public static void glEnableClientState(int cap) {
        com.genir.renderer.bridge.commands.GL11.glEnableClientState(cap);
    }

    public static void glDisableClientState(int cap) {
        com.genir.renderer.bridge.commands.GL11.glDisableClientState(cap);
    }

    public static void glEnable(int cap) {
        com.genir.renderer.bridge.commands.GL11.glEnable(cap);
    }

    public static void glDisable(int cap) {
        com.genir.renderer.bridge.commands.GL11.glDisable(cap);
    }

    public static void glEdgeFlagPointer(int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glEdgeFlagPointer(int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glEdgeFlag(boolean flag) {
        com.genir.renderer.bridge.commands.GL11.glEdgeFlag(flag);
    }

    public static void glDrawPixels(int width, int height, int format, int type, ByteBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawPixels(int width, int height, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawPixels(int width, int height, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawPixels(int width, int height, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElements(int mode, ByteBuffer indices) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        com.genir.renderer.bridge.commands.GL11.glDrawElements(mode, indices);
    }

    public static void glDrawElements(int mode, ShortBuffer indices) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElements(int mode, int indices_count, int type, long indices_buffer_offset) {
        com.genir.renderer.bridge.commands.GL11.glDrawElements(mode, indices_count, type, indices_buffer_offset);
    }

    public static void glDrawElements(int mode, int count, int type, ByteBuffer indices) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawBuffer(int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawArrays(int mode, int first, int count) {
        com.genir.renderer.bridge.commands.GL11.glDrawArrays(mode, first, count);
    }

    public static void glDepthRange(double zNear, double zFar) {
        com.genir.renderer.bridge.commands.GL11.glDepthRange(zNear, zFar);
    }

    public static void glDepthMask(boolean flag) {
        com.genir.renderer.bridge.commands.GL11.glDepthMask(flag);
    }

    public static void glDepthFunc(int func) {
        com.genir.renderer.bridge.commands.GL11.glDepthFunc(func);
    }

    public static void glFeedbackBuffer(int type, FloatBuffer buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glGetPixelMap(int map, FloatBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glGetPixelMapfv(int map, long values_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glGetPixelMapu(int map, IntBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glGetPixelMapuiv(int map, long values_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glGetPixelMapu(int map, ShortBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glGetPixelMapusv(int map, long values_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glGetMaterial(int face, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glGetMaterial(int face, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glGetMap(int target, int query, FloatBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glGetMap(int target, int query, DoubleBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glGetMap(int target, int query, IntBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glGetLight(int light, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glGetLight(int light, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetError() {
        return com.genir.renderer.bridge.commands.GL11.glGetError();
    }

    public static void glGetClipPlane(int plane, DoubleBuffer equation) {
        throw new UnsupportedOperationException();
    }

    public static void glGetBoolean(int pname, ByteBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static boolean glGetBoolean(int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetDouble(int pname, DoubleBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static double glGetDouble(int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetFloat(int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static float glGetFloat(int pname) {
        return com.genir.renderer.bridge.commands.GL11.glGetFloat(pname);
    }

    public static void glGetInteger(int pname, IntBuffer params) {
        com.genir.renderer.bridge.commands.GL11.glGetInteger(pname, params);
    }

    public static int glGetInteger(int pname) {
        return com.genir.renderer.bridge.commands.GL11.glGetInteger(pname);
    }

    public static void glGenTextures(IntBuffer textures) {
        com.genir.renderer.bridge.commands.GL11.glGenTextures(textures);
    }

    public static int glGenTextures() {
        return com.genir.renderer.bridge.commands.GL11.glGenTextures();
    }

    public static int glGenLists(int range) {
        return com.genir.renderer.bridge.commands.GL11.glGenLists(range);
    }

    public static void glFrustum(double left, double right, double bottom, double top, double zNear, double zFar) {
        throw new UnsupportedOperationException();
    }

    public static void glFrontFace(int mode) {
        com.genir.renderer.bridge.commands.GL11.glFrontFace(mode);
    }

    public static void glFogf(int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glFogi(int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glFog(int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glFog(int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glFlush() {
        com.genir.renderer.bridge.commands.GL11.glFlush();
    }

    public static void glFinish() {
        com.genir.renderer.bridge.commands.GL11.glFinish();
    }

    public static ByteBuffer glGetPointer(int pname, long result_size) {
        throw new UnsupportedOperationException();
    }

    public static boolean glIsEnabled(int cap) {
        return com.genir.renderer.bridge.commands.GL11.glIsEnabled(cap);
    }

    public static void glInterleavedArrays(int format, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glInterleavedArrays(int format, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glInterleavedArrays(int format, int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glInterleavedArrays(int format, int stride, ShortBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glInterleavedArrays(int format, int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glInitNames() {
        throw new UnsupportedOperationException();
    }

    public static void glHint(int target, int mode) {
        com.genir.renderer.bridge.commands.GL11.glHint(target, mode);
    }

    public static void glGetTexParameter(int target, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static float glGetTexParameterf(int target, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexParameter(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetTexParameteri(int target, int pname) {
        return com.genir.renderer.bridge.commands.GL11.glGetTexParameteri(target, pname);
    }

    public static void glGetTexLevelParameter(int target, int level, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static float glGetTexLevelParameterf(int target, int level, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexLevelParameter(int target, int level, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetTexLevelParameteri(int target, int level, int pname) {
        return com.genir.renderer.bridge.commands.GL11.glGetTexLevelParameteri(target, level, pname);
    }

    public static void glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glGetTexImage(target, level, format, type, pixels);
    }

    public static void glGetTexImage(int target, int level, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glGetTexImage(target, level, format, type, pixels);
    }

    public static void glGetTexImage(int target, int level, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexImage(int target, int level, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexImage(int target, int level, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexGen(int coord, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetTexGeni(int coord, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexGen(int coord, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static float glGetTexGenf(int coord, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexGen(int coord, int pname, DoubleBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static double glGetTexGend(int coord, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexEnv(int coord, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetTexEnvi(int coord, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetTexEnv(int coord, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static float glGetTexEnvf(int coord, int pname) {
        throw new UnsupportedOperationException();
    }
    public static String glGetString(int name) {
        return com.genir.renderer.bridge.commands.GL11.glGetString(name);
    }

    public static void glGetPolygonStipple(ByteBuffer mask) {
        throw new UnsupportedOperationException();
    }

    public static void glGetPolygonStipple(long mask_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static boolean glIsList(int list) {
        throw new UnsupportedOperationException();
    }

    public static void glMaterialf(int face, int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glMateriali(int face, int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        com.genir.renderer.bridge.commands.GL11.glMaterial(face, pname, params);
    }

    public static void glMaterial(int face, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glMapGrid1f(int un, float u1, float u2) {
        throw new UnsupportedOperationException();
    }

    public static void glMapGrid1d(int un, double u1, double u2) {
        throw new UnsupportedOperationException();
    }

    public static void glMapGrid2f(int un, float u1, float u2, int vn, float v1, float v2) {
        throw new UnsupportedOperationException();
    }

    public static void glMapGrid2d(int un, double u1, double u2, int vn, double v1, double v2) {
        throw new UnsupportedOperationException();
    }

    public static void glMap2f(int target, float u1, float u2, int ustride, int uorder, float v1, float v2, int vstride, int vorder, FloatBuffer points) {
        throw new UnsupportedOperationException();
    }

    public static void glMap2d(int target, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, DoubleBuffer points) {
        throw new UnsupportedOperationException();
    }

    public static void glMap1f(int target, float u1, float u2, int stride, int order, FloatBuffer points) {
        throw new UnsupportedOperationException();
    }

    public static void glMap1d(int target, double u1, double u2, int stride, int order, DoubleBuffer points) {
        throw new UnsupportedOperationException();
    }

    public static void glLogicOp(int opcode) {
        throw new UnsupportedOperationException();
    }

    public static void glLoadName(int name) {
        throw new UnsupportedOperationException();
    }

    public static void glLoadMatrix(FloatBuffer m) {
        com.genir.renderer.bridge.commands.GL11.glLoadMatrix(m);
    }

    public static void glLoadMatrix(DoubleBuffer m) {
        throw new UnsupportedOperationException();
    }

    public static void glLoadIdentity() {
        com.genir.renderer.bridge.commands.GL11.glLoadIdentity();
    }

    public static void glListBase(int base) {
        throw new UnsupportedOperationException();
    }

    public static void glLineWidth(float width) {
        com.genir.renderer.bridge.commands.GL11.glLineWidth(width);
    }

    public static void glLineStipple(int factor, short pattern) {
        throw new UnsupportedOperationException();
    }

    public static void glLightModelf(int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glLightModeli(int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glLightModel(int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glLightModel(int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glLightf(int light, int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glLighti(int light, int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        com.genir.renderer.bridge.commands.GL11.glLight(light, pname, params);
    }

    public static void glLight(int light, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static boolean glIsTexture(int texture) {
        return com.genir.renderer.bridge.commands.GL11.glIsTexture(texture);
    }

    public static void glMatrixMode(int mode) {
        com.genir.renderer.bridge.commands.GL11.glMatrixMode(mode);
    }

    public static void glPolygonStipple(ByteBuffer mask) {
        throw new UnsupportedOperationException();
    }

    public static void glPolygonStipple(long mask_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glPolygonOffset(float factor, float units) {
        throw new UnsupportedOperationException();
    }

    public static void glPolygonMode(int face, int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glPointSize(float size) {
        com.genir.renderer.bridge.commands.GL11.glPointSize(size);
    }

    public static void glPixelZoom(float xfactor, float yfactor) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelTransferf(int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelTransferi(int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelStoref(int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelStorei(int pname, int param) {
        com.genir.renderer.bridge.commands.GL11.glPixelStorei(pname, param);
    }

    public static void glPixelMap(int map, FloatBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelMapfv(int map, int values_mapsize, long values_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelMapu(int map, IntBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelMapuiv(int map, int values_mapsize, long values_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelMapu(int map, ShortBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glPixelMapusv(int map, int values_mapsize, long values_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glPassThrough(float token) {
        throw new UnsupportedOperationException();
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        com.genir.renderer.bridge.commands.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
    }

    public static void glNormalPointer(int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glNormalPointer(int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glNormalPointer(int stride, FloatBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glNormalPointer(int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glNormalPointer(int type, int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glNormalPointer(int type, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glNormal3b(byte nx, byte ny, byte nz) {
        throw new UnsupportedOperationException();
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        com.genir.renderer.bridge.commands.GL11.glNormal3f(nx, ny, nz);
    }

    public static void glNormal3d(double nx, double ny, double nz) {
        throw new UnsupportedOperationException();
    }

    public static void glNormal3i(int nx, int ny, int nz) {
        throw new UnsupportedOperationException();
    }

    public static void glNewList(int list, int mode) {
        com.genir.renderer.bridge.commands.GL11.glNewList(list, mode);
    }

    public static void glEndList() {
        com.genir.renderer.bridge.commands.GL11.glEndList();
    }

    public static void glMultMatrix(FloatBuffer m) {
        com.genir.renderer.bridge.commands.GL11.glMultMatrix(m);
    }

    public static void glMultMatrix(DoubleBuffer m) {
        throw new UnsupportedOperationException();
    }

    public static void glShadeModel(int mode) {
        com.genir.renderer.bridge.commands.GL11.glShadeModel(mode);
    }

    public static void glSelectBuffer(IntBuffer buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glScissor(int x, int y, int width, int height) {
        com.genir.renderer.bridge.commands.GL11.glScissor(x, y, width, height);
    }

    public static void glScalef(float x, float y, float z) {
        com.genir.renderer.bridge.commands.GL11.glScalef(x, y, z);
    }

    public static void glScaled(double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        com.genir.renderer.bridge.commands.GL11.glRotatef(angle, x, y, z);
    }

    public static void glRotated(double angle, double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static int glRenderMode(int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glRectf(float x1, float y1, float x2, float y2) {
        com.genir.renderer.bridge.commands.GL11.glRectf(x1, y1, x2, y2);
    }

    public static void glRectd(double x1, double y1, double x2, double y2) {
        throw new UnsupportedOperationException();
    }

    public static void glRecti(int x1, int y1, int x2, int y2) {
        throw new UnsupportedOperationException();
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glReadPixels(x, y, width, height, format, type, pixels);
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glReadPixels(x, y, width, height, format, type, pixels);
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glReadPixels(x, y, width, height, format, type, pixels);
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glReadBuffer(int mode) {
        com.genir.renderer.bridge.commands.GL11.glReadBuffer(mode);
    }

    public static void glRasterPos2f(float x, float y) {
        throw new UnsupportedOperationException();
    }

    public static void glRasterPos2d(double x, double y) {
        throw new UnsupportedOperationException();
    }

    public static void glRasterPos2i(int x, int y) {
        throw new UnsupportedOperationException();
    }

    public static void glRasterPos3f(float x, float y, float z) {
        throw new UnsupportedOperationException();
    }

    public static void glRasterPos3d(double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glRasterPos3i(int x, int y, int z) {
        throw new UnsupportedOperationException();
    }

    public static void glRasterPos4f(float x, float y, float z, float w) {
        throw new UnsupportedOperationException();
    }

    public static void glRasterPos4d(double x, double y, double z, double w) {
        throw new UnsupportedOperationException();
    }

    public static void glRasterPos4i(int x, int y, int z, int w) {
        throw new UnsupportedOperationException();
    }

    public static void glPushName(int name) {
        throw new UnsupportedOperationException();
    }

    public static void glPopName() {
        throw new UnsupportedOperationException();
    }

    public static void glPushMatrix() {
        com.genir.renderer.bridge.commands.GL11.glPushMatrix();
    }

    public static void glPopMatrix() {
        com.genir.renderer.bridge.commands.GL11.glPopMatrix();
    }

    public static void glPushClientAttrib(int mask) {
        com.genir.renderer.bridge.commands.GL11.glPushClientAttrib(mask);
    }

    public static void glPopClientAttrib() {
        com.genir.renderer.bridge.commands.GL11.glPopClientAttrib();
    }

    public static void glPushAttrib(int mask) {
        com.genir.renderer.bridge.commands.GL11.glPushAttrib(mask);
    }

    public static void glPopAttrib() {
        com.genir.renderer.bridge.commands.GL11.glPopAttrib();
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        com.genir.renderer.bridge.commands.GL11.glStencilFunc(func, ref, mask);
    }

    public static void glVertexPointer(int size, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glVertexPointer(size, stride, pointer);
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexPointer(int size, int stride, ShortBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) {
        com.genir.renderer.bridge.commands.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glVertexPointer(int size, int type, int stride, ByteBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glVertexPointer(size, type, stride, pointer);
    }

    public static void glVertex2f(float x, float y) {
        com.genir.renderer.bridge.commands.GL11.glVertex2f(x, y);
    }

    public static void glVertex2d(double x, double y) {
        com.genir.renderer.bridge.commands.GL11.glVertex2d(x, y);
    }

    public static void glVertex2i(int x, int y) {
        com.genir.renderer.bridge.commands.GL11.glVertex2i(x, y);
    }

    public static void glVertex3f(float x, float y, float z) {
        com.genir.renderer.bridge.commands.GL11.glVertex3f(x, y, z);
    }

    public static void glVertex3d(double x, double y, double z) {
        com.genir.renderer.bridge.commands.GL11.glVertex3d(x, y, z);
    }

    public static void glVertex3i(int x, int y, int z) {
        throw new UnsupportedOperationException();
    }

    public static void glVertex4f(float x, float y, float z, float w) {
        throw new UnsupportedOperationException();
    }

    public static void glVertex4d(double x, double y, double z, double w) {
        throw new UnsupportedOperationException();
    }

    public static void glVertex4i(int x, int y, int z, int w) {
        throw new UnsupportedOperationException();
    }

    public static void glTranslatef(float x, float y, float z) {
        com.genir.renderer.bridge.commands.GL11.glTranslatef(x, y, z);
    }

    public static void glTranslated(double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexImage1D(target, level, internalformat, width, border, format, type, pixels);
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, FloatBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, ByteBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexSubImage1D(target, level, xoffset, width, format, type, pixels);
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, FloatBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glTexParameterf(int target, int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glTexParameteri(int target, int pname, int param) {
        com.genir.renderer.bridge.commands.GL11.glTexParameteri(target, pname, param);
    }

    public static void glTexParameter(int target, int pname, FloatBuffer param) {
        com.genir.renderer.bridge.commands.GL11.glTexParameter(target, pname, param);
    }

    public static void glTexParameter(int target, int pname, IntBuffer param) {
        throw new UnsupportedOperationException();
    }

    public static void glTexGenf(int coord, int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glTexGend(int coord, int pname, double param) {
        throw new UnsupportedOperationException();
    }

    public static void glTexGen(int coord, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glTexGen(int coord, int pname, DoubleBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glTexGeni(int coord, int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glTexGen(int coord, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glTexEnvf(int target, int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glTexEnvi(int target, int pname, int param) {
        com.genir.renderer.bridge.commands.GL11.glTexEnvi(target, pname, param);
    }

    public static void glTexEnv(int target, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glTexEnv(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordPointer(int size, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glTexCoordPointer(size, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordPointer(int size, int stride, ShortBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) {
        com.genir.renderer.bridge.commands.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glTexCoordPointer(int size, int type, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoord1f(float s) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoord1d(double s) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoord2f(float s, float t) {
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(s, t);
    }

    public static void glTexCoord2d(double s, double t) {
        com.genir.renderer.bridge.commands.GL11.glTexCoord2d(s, t);
    }

    public static void glTexCoord3f(float s, float t, float r) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoord3d(double s, double t, double r) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoord4f(float s, float t, float r, float q) {
        com.genir.renderer.bridge.commands.GL11.glTexCoord4f(s, t, r, q);
    }

    public static void glTexCoord4d(double s, double t, double r, double q) {
        throw new UnsupportedOperationException();
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        com.genir.renderer.bridge.commands.GL11.glStencilOp(fail, zfail, zpass);
    }

    public static void glStencilMask(int mask) {
        com.genir.renderer.bridge.commands.GL11.glStencilMask(mask);
    }

    public static void glViewport(int x, int y, int width, int height) {
        com.genir.renderer.bridge.commands.GL11.glViewport(x, y, width, height);
    }
}
