lbl_8050C728:
/* 8050C728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050C72C  7C 08 02 A6 */	mflr r0
/* 8050C730  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050C734  39 61 00 20 */	addi r11, r1, 0x20
/* 8050C738  4B B8 E7 9D */	bl func_8009AED4
/* 8050C73C  3C A0 80 65 */	lis r5, lit_474@ha /* 0x80648E5C@ha */
/* 8050C740  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8050C744  C0 25 8E 5C */	lfs f1, lit_474@l(r5)  /* 0x80648E5C@l */
/* 8050C748  7C 7D 1B 78 */	mr r29, r3
/* 8050C74C  83 C4 00 00 */	lwz r30, 0(r4)
/* 8050C750  7C 9F 23 78 */	mr r31, r4
/* 8050C754  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050C758  41 80 00 90 */	blt lbl_8050C7E8
/* 8050C75C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8050C760  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050C764  40 80 00 08 */	bge lbl_8050C76C
/* 8050C768  48 00 00 80 */	b lbl_8050C7E8
lbl_8050C76C:
/* 8050C76C  7F C3 F3 78 */	mr r3, r30
/* 8050C770  4B ED 89 E9 */	bl _texture_z_light_fog_prim_xlu
/* 8050C774  7F E4 FB 78 */	mr r4, r31
/* 8050C778  38 7D 00 28 */	addi r3, r29, 0x28
/* 8050C77C  4B E6 98 9D */	bl Setpos_HiliteReflect_xlu_init
/* 8050C780  3C 80 80 6E */	lis r4, act_ant_evw_anime@ha /* 0x806E3730@ha */
/* 8050C784  7F E3 FB 78 */	mr r3, r31
/* 8050C788  38 84 37 30 */	addi r4, r4, act_ant_evw_anime@l /* 0x806E3730@l */
/* 8050C78C  4B E6 6D D1 */	bl Evw_Anime_Set
/* 8050C790  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8050C794  83 FE 02 E0 */	lwz r31, 0x2e0(r30)
/* 8050C798  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8050C79C  7F C3 F3 78 */	mr r3, r30
/* 8050C7A0  90 1F 00 00 */	stw r0, 0(r31)
/* 8050C7A4  4B F0 0C 31 */	bl _Matrix_to_Mtx_new
/* 8050C7A8  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 8050C7AC  90 7F 00 04 */	stw r3, 4(r31)
/* 8050C7B0  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 8050C7B4  3C 60 80 6E */	lis r3, act_antT_model@ha /* 0x806E36B0@ha */
/* 8050C7B8  90 1F 00 08 */	stw r0, 8(r31)
/* 8050C7BC  3C 80 DE 00 */	lis r4, 0xde00
/* 8050C7C0  38 03 36 B0 */	addi r0, r3, act_antT_model@l /* 0x806E36B0@l */
/* 8050C7C4  80 7D 01 7C */	lwz r3, 0x17c(r29)
/* 8050C7C8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8050C7CC  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8050C7D0  3B FF 00 10 */	addi r31, r31, 0x10
/* 8050C7D4  7F E3 FB 78 */	mr r3, r31
/* 8050C7D8  90 9F 00 00 */	stw r4, 0(r31)
/* 8050C7DC  3B FF 00 08 */	addi r31, r31, 8
/* 8050C7E0  90 03 00 04 */	stw r0, 4(r3)
/* 8050C7E4  93 FE 02 E0 */	stw r31, 0x2e0(r30)
lbl_8050C7E8:
/* 8050C7E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8050C7EC  4B B8 E7 35 */	bl func_8009AF20
/* 8050C7F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050C7F4  7C 08 03 A6 */	mtlr r0
/* 8050C7F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8050C7FC  4E 80 00 20 */	blr 
