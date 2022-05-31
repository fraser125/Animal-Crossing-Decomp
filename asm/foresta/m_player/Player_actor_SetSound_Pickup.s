lbl_804ED62C:
/* 804ED62C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED630  7C 08 02 A6 */	mflr r0
/* 804ED634  3C 80 80 64 */	lis r4, lit_1375@ha /* 0x80646A30@ha */
/* 804ED638  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED63C  C0 24 6A 30 */	lfs f1, lit_1375@l(r4)  /* 0x80646A30@l */
/* 804ED640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ED644  93 C1 00 08 */	stw r30, 8(r1)
/* 804ED648  7C 7E 1B 78 */	mr r30, r3
/* 804ED64C  3B FE 01 74 */	addi r31, r30, 0x174
/* 804ED650  7F E3 FB 78 */	mr r3, r31
/* 804ED654  4B FE 9F AD */	bl Player_actor_Check_AnimationFrame
/* 804ED658  2C 03 00 00 */	cmpwi r3, 0
/* 804ED65C  41 82 00 0C */	beq lbl_804ED668
/* 804ED660  7F C3 F3 78 */	mr r3, r30
/* 804ED664  4B FF 1F F9 */	bl Player_actor_sound_ITEM_GET
lbl_804ED668:
/* 804ED668  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804ED66C  7F E3 FB 78 */	mr r3, r31
/* 804ED670  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804ED674  4B FE 9F 8D */	bl Player_actor_Check_AnimationFrame
/* 804ED678  2C 03 00 00 */	cmpwi r3, 0
/* 804ED67C  41 82 00 0C */	beq lbl_804ED688
/* 804ED680  7F C3 F3 78 */	mr r3, r30
/* 804ED684  4B FF 1E 01 */	bl Player_actor_sound_GASAGOSO
lbl_804ED688:
/* 804ED688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ED690  83 C1 00 08 */	lwz r30, 8(r1)
/* 804ED694  7C 08 03 A6 */	mtlr r0
/* 804ED698  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED69C  4E 80 00 20 */	blr 
