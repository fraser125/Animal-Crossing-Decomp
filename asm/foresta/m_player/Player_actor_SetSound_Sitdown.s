lbl_804EF188:
/* 804EF188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF18C  7C 08 02 A6 */	mflr r0
/* 804EF190  3C 80 80 64 */	lis r4, lit_1077@ha /* 0x80646A1C@ha */
/* 804EF194  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF198  C0 24 6A 1C */	lfs f1, lit_1077@l(r4)  /* 0x80646A1C@l */
/* 804EF19C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF1A0  7C 7F 1B 78 */	mr r31, r3
/* 804EF1A4  38 7F 01 74 */	addi r3, r31, 0x174
/* 804EF1A8  4B FE 84 59 */	bl Player_actor_Check_AnimationFrame
/* 804EF1AC  2C 03 00 00 */	cmpwi r3, 0
/* 804EF1B0  41 82 00 10 */	beq lbl_804EF1C0
/* 804EF1B4  80 9F 0D 18 */	lwz r4, 0xd18(r31)
/* 804EF1B8  7F E3 FB 78 */	mr r3, r31
/* 804EF1BC  4B FF 03 A9 */	bl Player_actor_sound_SIT
lbl_804EF1C0:
/* 804EF1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF1C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF1C8  7C 08 03 A6 */	mtlr r0
/* 804EF1CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF1D0  4E 80 00 20 */	blr 
