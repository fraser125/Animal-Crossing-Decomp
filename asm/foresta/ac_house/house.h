extern f32 lit_710;
extern f32 lit_783;
extern f32 lit_784;

void aHUS_actor_move(void*, s32);                      /* extern */
void mFI_SetFG_common(s16, s32*, u32, s16);              /* extern */
void cKF_SkeletonInfo_R_dt(s32);                       /* extern */
void change_FGUnit(s32);                                 /* extern */

struct house_A {    
    u32 unk0;
    s32 unk4;
};

struct player {
    char unk2D0[8];
};

struct house {
    char unk0[8];
    s32 unk4;
    s16 unk6;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    char unk164[8];
    f32 unk2CC;    
    struct house_A * unk2D0;
};

struct house house;
