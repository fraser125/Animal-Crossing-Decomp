lbl_80506564:
/* 80506564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506568  7C 08 02 A6 */	mflr r0
/* 8050656C  3C 80 80 65 */	lis r4, lit_16394@ha /* 0x80648598@ha */
/* 80506570  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506574  C0 24 85 98 */	lfs f1, lit_16394@l(r4)  /* 0x80648598@l */
/* 80506578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050657C  7C 7F 1B 78 */	mr r31, r3
/* 80506580  38 7F 01 74 */	addi r3, r31, 0x174
/* 80506584  4B FD 10 7D */	bl Player_actor_Check_AnimationFrame
/* 80506588  2C 03 00 00 */	cmpwi r3, 0
/* 8050658C  41 82 00 0C */	beq lbl_80506598
/* 80506590  7F E3 FB 78 */	mr r3, r31
/* 80506594  4B FD 96 2D */	bl Player_actor_sound_uchiwa
lbl_80506598:
/* 80506598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050659C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805065A0  7C 08 03 A6 */	mtlr r0
/* 805065A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805065A8  4E 80 00 20 */	blr 
