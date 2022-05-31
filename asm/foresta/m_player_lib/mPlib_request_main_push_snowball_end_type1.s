lbl_803DAD18:
/* 803DAD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DAD1C  7C 08 02 A6 */	mflr r0
/* 803DAD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DAD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DAD28  7C 7F 1B 78 */	mr r31, r3
/* 803DAD2C  4B FF E9 45 */	bl mPlib_get_player_actor_main_index
/* 803DAD30  2C 03 00 66 */	cmpwi r3, 0x66
/* 803DAD34  40 82 00 38 */	bne lbl_803DAD6C
/* 803DAD38  7F E3 FB 78 */	mr r3, r31
/* 803DAD3C  4B FF E9 05 */	bl get_player_actor_withoutCheck
/* 803DAD40  81 83 12 7C */	lwz r12, 0x127c(r3)
/* 803DAD44  3C A0 80 64 */	lis r5, lit_961@ha /* 0x80642FDC@ha */
/* 803DAD48  3C 80 80 64 */	lis r4, lit_1088@ha /* 0x80642FE0@ha */
/* 803DAD4C  C0 25 2F DC */	lfs f1, lit_961@l(r5)  /* 0x80642FDC@l */
/* 803DAD50  C0 44 2F E0 */	lfs f2, lit_1088@l(r4)  /* 0x80642FE0@l */
/* 803DAD54  7F E3 FB 78 */	mr r3, r31
/* 803DAD58  38 80 00 00 */	li r4, 0
/* 803DAD5C  38 A0 00 01 */	li r5, 1
/* 803DAD60  7D 89 03 A6 */	mtctr r12
/* 803DAD64  4E 80 04 21 */	bctrl 
/* 803DAD68  48 00 00 08 */	b lbl_803DAD70
lbl_803DAD6C:
/* 803DAD6C  38 60 00 00 */	li r3, 0
lbl_803DAD70:
/* 803DAD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DAD74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DAD78  7C 08 03 A6 */	mtlr r0
/* 803DAD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DAD80  4E 80 00 20 */	blr 
