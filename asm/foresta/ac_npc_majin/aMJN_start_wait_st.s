lbl_80556E94:
/* 80556E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556E98  7C 08 02 A6 */	mflr r0
/* 80556E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80556EA4  7C 9F 23 78 */	mr r31, r4
/* 80556EA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80556EAC  7C 7E 1B 78 */	mr r30, r3
/* 80556EB0  7F E3 FB 78 */	mr r3, r31
/* 80556EB4  4B E8 27 8D */	bl get_player_actor_withoutCheck
/* 80556EB8  28 03 00 00 */	cmplwi r3, 0
/* 80556EBC  41 82 00 24 */	beq lbl_80556EE0
/* 80556EC0  3C 80 80 65 */	lis r4, lit_600@ha /* 0x80649648@ha */
/* 80556EC4  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80556EC8  C0 04 96 48 */	lfs f0, lit_600@l(r4)  /* 0x80649648@l */
/* 80556ECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80556ED0  40 81 00 10 */	ble lbl_80556EE0
/* 80556ED4  7F C3 F3 78 */	mr r3, r30
/* 80556ED8  7F E4 FB 78 */	mr r4, r31
/* 80556EDC  4B FF FE 0D */	bl aMJN_setup_start_think
lbl_80556EE0:
/* 80556EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80556EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80556EE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80556EEC  7C 08 03 A6 */	mtlr r0
/* 80556EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80556EF4  4E 80 00 20 */	blr 
