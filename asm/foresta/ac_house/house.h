void aHUS_actor_move(void*, s32);                      /* extern */
void mFI_SetFG_common(s16, s32*, u32, s16);              /* extern */
void cKF_SkeletonInfo_R_dt(s32);                       /* extern */
void change_FGUnit(s32);                                 /* extern */
void sAdo_OngenTrgStart(s32, s32, s32);                /* extern */

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

extern s32 process;
struct action_ {
    s32 unk2A0;
};

void aHUS_ctrl_light(struct actor_move *);                           /* extern */
void aHUS_set_doorSE();                                /* extern */
void chase_f(void*, f32*, f32);                        /* extern */
extern f32 lit_738;

struct actor_move {
    void (*unk2A0)(struct actor_move *, s32);
    //void * unk2A0;
};

struct data {
    s32 unk4;
};

void aHUS_rewrite_out_data(void*, struct arg_door *);              /* extern */
void aHUS_setup_action(void*, s32);                      /* extern */
s32 cKF_SkeletonInfo_R_play(s32);                   /* extern */
void goto_other_scene(void*, void *, s32);                   /* extern */
void mDemo_End(void*);                                 /* extern */
extern struct door_data aHUS_npc_house_door_data;
extern struct data data_806C5240; 

struct open_door {
    s32 unk2B0;
    s32 unk20;
};

struct arg_door {
    s32 unk20D0;
};
