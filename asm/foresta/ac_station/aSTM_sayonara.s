lbl_805BC6AC:
/* 805BC6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC6B0  7C 08 02 A6 */	mflr r0
/* 805BC6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC6B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC6BC  7C 7F 1B 78 */	mr r31, r3
/* 805BC6C0  4B E0 2F E9 */	bl func_803BF6A8
/* 805BC6C4  4B E0 46 39 */	bl mMsg_Check_MainDisappear
/* 805BC6C8  2C 03 00 00 */	cmpwi r3, 0
/* 805BC6CC  41 82 00 18 */	beq lbl_805BC6E4
/* 805BC6D0  38 60 00 07 */	li r3, 7
/* 805BC6D4  4B DC 01 4D */	bl mBGMPsComp_scene_mode
/* 805BC6D8  7F E3 FB 78 */	mr r3, r31
/* 805BC6DC  38 80 00 40 */	li r4, 0x40
/* 805BC6E0  4B FF F5 D1 */	bl aSTC_clip_change_sound
lbl_805BC6E4:
/* 805BC6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC6EC  7C 08 03 A6 */	mtlr r0
/* 805BC6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC6F4  4E 80 00 20 */	blr 
