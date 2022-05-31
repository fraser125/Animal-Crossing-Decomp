lbl_804C4E18:
/* 804C4E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C4E1C  7C 08 02 A6 */	mflr r0
/* 804C4E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C4E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C4E28  3B E0 00 00 */	li r31, 0
/* 804C4E2C  93 C1 00 08 */	stw r30, 8(r1)
/* 804C4E30  7C BE 2B 78 */	mr r30, r5
/* 804C4E34  4B FF FF 95 */	bl bg_item_common_culling_check
/* 804C4E38  2C 03 00 01 */	cmpwi r3, 1
/* 804C4E3C  40 82 00 2C */	bne lbl_804C4E68
/* 804C4E40  3C 60 80 64 */	lis r3, lit_2677@ha /* 0x806461D8@ha */
/* 804C4E44  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804C4E48  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804C4E4C  C0 63 61 D8 */	lfs f3, lit_2677@l(r3)  /* 0x806461D8@l */
/* 804C4E50  4B EB A1 61 */	bl Camera2_CheckEnterCullingArea
/* 804C4E54  2C 03 00 01 */	cmpwi r3, 1
/* 804C4E58  40 82 00 0C */	bne lbl_804C4E64
/* 804C4E5C  3B E0 00 00 */	li r31, 0
/* 804C4E60  48 00 00 08 */	b lbl_804C4E68
lbl_804C4E64:
/* 804C4E64  3B E0 00 01 */	li r31, 1
lbl_804C4E68:
/* 804C4E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C4E6C  7F E3 FB 78 */	mr r3, r31
/* 804C4E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C4E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 804C4E78  7C 08 03 A6 */	mtlr r0
/* 804C4E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C4E80  4E 80 00 20 */	blr 
