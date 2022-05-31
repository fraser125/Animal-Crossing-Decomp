lbl_804F0154:
/* 804F0154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0158  7C 08 02 A6 */	mflr r0
/* 804F015C  3C 80 80 64 */	lis r4, lit_1375@ha /* 0x80646A30@ha */
/* 804F0160  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0164  C0 24 6A 30 */	lfs f1, lit_1375@l(r4)  /* 0x80646A30@l */
/* 804F0168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F016C  7C 7F 1B 78 */	mr r31, r3
/* 804F0170  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F0174  4B FE 74 8D */	bl Player_actor_Check_AnimationFrame
/* 804F0178  2C 03 00 00 */	cmpwi r3, 0
/* 804F017C  41 82 00 0C */	beq lbl_804F0188
/* 804F0180  7F E3 FB 78 */	mr r3, r31
/* 804F0184  4B FE F3 25 */	bl Player_actor_sound_AXE_FURI
lbl_804F0188:
/* 804F0188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F018C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0190  7C 08 03 A6 */	mtlr r0
/* 804F0194  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0198  4E 80 00 20 */	blr 
