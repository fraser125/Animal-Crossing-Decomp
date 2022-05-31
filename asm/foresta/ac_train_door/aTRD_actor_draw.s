lbl_804AC3A4:
/* 804AC3A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AC3A8  7C 08 02 A6 */	mflr r0
/* 804AC3AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AC3B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804AC3B4  4B BE EB 21 */	bl func_8009AED4
/* 804AC3B8  3B E3 01 7C */	addi r31, r3, 0x17c
/* 804AC3BC  80 63 01 94 */	lwz r3, 0x194(r3)
/* 804AC3C0  7C 9D 23 78 */	mr r29, r4
/* 804AC3C4  80 84 00 00 */	lwz r4, 0(r4)
/* 804AC3C8  88 63 00 01 */	lbz r3, 1(r3)
/* 804AC3CC  80 04 02 D4 */	lwz r0, 0x2d4(r4)
/* 804AC3D0  54 63 30 32 */	slwi r3, r3, 6
/* 804AC3D4  7C 03 00 51 */	subf. r0, r3, r0
/* 804AC3D8  90 04 02 D4 */	stw r0, 0x2d4(r4)
/* 804AC3DC  7C 1E 03 78 */	mr r30, r0
/* 804AC3E0  41 82 00 30 */	beq lbl_804AC410
/* 804AC3E4  80 7D 00 00 */	lwz r3, 0(r29)
/* 804AC3E8  4B F3 8D 21 */	bl _texture_z_light_fog_prim
/* 804AC3EC  80 7D 00 00 */	lwz r3, 0(r29)
/* 804AC3F0  4B F3 8C C9 */	bl texture_z_light_prim_xlu_disp
/* 804AC3F4  7F A3 EB 78 */	mr r3, r29
/* 804AC3F8  7F E4 FB 78 */	mr r4, r31
/* 804AC3FC  7F C5 F3 78 */	mr r5, r30
/* 804AC400  38 C0 00 00 */	li r6, 0
/* 804AC404  38 E0 00 00 */	li r7, 0
/* 804AC408  39 00 00 00 */	li r8, 0
/* 804AC40C  4B EC 53 2D */	bl cKF_Si3_draw_R_SV
lbl_804AC410:
/* 804AC410  39 61 00 20 */	addi r11, r1, 0x20
/* 804AC414  4B BE EB 0D */	bl func_8009AF20
/* 804AC418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AC41C  7C 08 03 A6 */	mtlr r0
/* 804AC420  38 21 00 20 */	addi r1, r1, 0x20
/* 804AC424  4E 80 00 20 */	blr 
