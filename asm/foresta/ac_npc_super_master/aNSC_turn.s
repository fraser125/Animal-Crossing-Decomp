lbl_8058536C:
/* 8058536C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80585370  7C 08 02 A6 */	mflr r0
/* 80585374  90 01 00 24 */	stw r0, 0x24(r1)
/* 80585378  39 61 00 20 */	addi r11, r1, 0x20
/* 8058537C  4B B1 5B 59 */	bl func_8009AED4
/* 80585380  7C 7D 1B 78 */	mr r29, r3
/* 80585384  7C 9E 23 78 */	mr r30, r4
/* 80585388  4B FF CD 99 */	bl aNSC_message_ctrl
/* 8058538C  2C 03 00 01 */	cmpwi r3, 1
/* 80585390  41 82 00 5C */	beq lbl_805853EC
/* 80585394  7F C3 F3 78 */	mr r3, r30
/* 80585398  4B E5 42 A9 */	bl get_player_actor_withoutCheck
/* 8058539C  28 03 00 00 */	cmplwi r3, 0
/* 805853A0  41 82 00 4C */	beq lbl_805853EC
/* 805853A4  AB FD 09 A6 */	lha r31, 0x9a6(r29)
/* 805853A8  38 7D 00 DE */	addi r3, r29, 0xde
/* 805853AC  38 A0 08 00 */	li r5, 0x800
/* 805853B0  7F E4 FB 78 */	mr r4, r31
/* 805853B4  4B E3 57 91 */	bl chase_angle
/* 805853B8  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 805853BC  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 805853C0  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 805853C4  7C 60 F8 51 */	subf. r3, r0, r31
/* 805853C8  7C 03 00 D0 */	neg r0, r3
/* 805853CC  41 80 00 08 */	blt lbl_805853D4
/* 805853D0  7C 60 1B 78 */	mr r0, r3
lbl_805853D4:
/* 805853D4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805853D8  41 81 00 14 */	bgt lbl_805853EC
/* 805853DC  7F A3 EB 78 */	mr r3, r29
/* 805853E0  7F C4 F3 78 */	mr r4, r30
/* 805853E4  38 A0 00 3D */	li r5, 0x3d
/* 805853E8  48 00 0B D9 */	bl aNSC_setupAction
lbl_805853EC:
/* 805853EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805853F0  4B B1 5B 31 */	bl func_8009AF20
/* 805853F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805853F8  7C 08 03 A6 */	mtlr r0
/* 805853FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80585400  4E 80 00 20 */	blr 
