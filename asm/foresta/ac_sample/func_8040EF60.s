lbl_8040EF60:
/* 8040EF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040EF64  7C 08 02 A6 */	mflr r0
/* 8040EF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040EF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040EF70  7C 9F 23 78 */	mr r31, r4
/* 8040EF74  93 C1 00 08 */	stw r30, 8(r1)
/* 8040EF78  7C 7E 1B 78 */	mr r30, r3
/* 8040EF7C  7F E3 FB 78 */	mr r3, r31
/* 8040EF80  38 9E 02 44 */	addi r4, r30, 0x244
/* 8040EF84  4B F8 56 95 */	bl ClObjPipe_ct
/* 8040EF88  3C 80 80 66 */	lis r4, data_8065F940@ha /* 0x8065F940@ha */
/* 8040EF8C  7F E3 FB 78 */	mr r3, r31
/* 8040EF90  38 C4 F9 40 */	addi r6, r4, data_8065F940@l /* 0x8065F940@l */
/* 8040EF94  7F C5 F3 78 */	mr r5, r30
/* 8040EF98  38 9E 02 44 */	addi r4, r30, 0x244
/* 8040EF9C  4B F8 57 15 */	bl ClObjPipe_set5
/* 8040EFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040EFA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040EFA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040EFAC  7C 08 03 A6 */	mtlr r0
/* 8040EFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8040EFB4  4E 80 00 20 */	blr 
