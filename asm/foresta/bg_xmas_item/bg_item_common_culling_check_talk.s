lbl_804CC230:
/* 804CC230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC234  7C 08 02 A6 */	mflr r0
/* 804CC238  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CC240  3B E0 00 00 */	li r31, 0
/* 804CC244  93 C1 00 08 */	stw r30, 8(r1)
/* 804CC248  7C BE 2B 78 */	mr r30, r5
/* 804CC24C  4B FF FF 95 */	bl bg_item_common_culling_check
/* 804CC250  2C 03 00 01 */	cmpwi r3, 1
/* 804CC254  40 82 00 2C */	bne lbl_804CC280
/* 804CC258  3C 60 80 64 */	lis r3, lit_2677@ha /* 0x80646278@ha */
/* 804CC25C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804CC260  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804CC264  C0 63 62 78 */	lfs f3, lit_2677@l(r3)  /* 0x80646278@l */
/* 804CC268  4B EB 2D 49 */	bl Camera2_CheckEnterCullingArea
/* 804CC26C  2C 03 00 01 */	cmpwi r3, 1
/* 804CC270  40 82 00 0C */	bne lbl_804CC27C
/* 804CC274  3B E0 00 00 */	li r31, 0
/* 804CC278  48 00 00 08 */	b lbl_804CC280
lbl_804CC27C:
/* 804CC27C  3B E0 00 01 */	li r31, 1
lbl_804CC280:
/* 804CC280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC284  7F E3 FB 78 */	mr r3, r31
/* 804CC288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CC28C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804CC290  7C 08 03 A6 */	mtlr r0
/* 804CC294  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC298  4E 80 00 20 */	blr 
