lbl_804F5634:
/* 804F5634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5638  7C 08 02 A6 */	mflr r0
/* 804F563C  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804F5640  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5644  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804F5648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F564C  7C 7F 1B 78 */	mr r31, r3
/* 804F5650  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F5654  4B FE 1F AD */	bl Player_actor_Check_AnimationFrame
/* 804F5658  2C 03 00 00 */	cmpwi r3, 0
/* 804F565C  41 82 00 0C */	beq lbl_804F5668
/* 804F5660  7F E3 FB 78 */	mr r3, r31
/* 804F5664  4B FE A0 AD */	bl Player_actor_sound_ROD_STROKE_small
lbl_804F5668:
/* 804F5668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F566C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5670  7C 08 03 A6 */	mtlr r0
/* 804F5674  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5678  4E 80 00 20 */	blr 
