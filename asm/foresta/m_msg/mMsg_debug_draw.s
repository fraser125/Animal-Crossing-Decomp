lbl_803BF5AC:
/* 803BF5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF5B0  7C 08 02 A6 */	mflr r0
/* 803BF5B4  3C 80 81 17 */	lis r4, mMsg_window@ha /* 0x81169FC0@ha */
/* 803BF5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BF5C0  3B E4 9F C0 */	addi r31, r4, mMsg_window@l /* 0x81169FC0@l */
/* 803BF5C4  93 C1 00 08 */	stw r30, 8(r1)
/* 803BF5C8  7C 7E 1B 78 */	mr r30, r3
/* 803BF5CC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803BF5D0  28 00 00 00 */	cmplwi r0, 0
/* 803BF5D4  41 82 00 44 */	beq lbl_803BF618
/* 803BF5D8  38 80 00 F5 */	li r4, 0xf5
/* 803BF5DC  38 A0 00 FF */	li r5, 0xff
/* 803BF5E0  38 C0 00 FA */	li r6, 0xfa
/* 803BF5E4  38 E0 00 FF */	li r7, 0xff
/* 803BF5E8  4B C9 BB B9 */	bl gfxprint_color
/* 803BF5EC  7F C3 F3 78 */	mr r3, r30
/* 803BF5F0  38 80 00 03 */	li r4, 3
/* 803BF5F4  38 A0 00 06 */	li r5, 6
/* 803BF5F8  4B C9 BC 19 */	bl gfxprint_locate8x8
/* 803BF5FC  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 803BF600  3C 60 80 66 */	lis r3, lit_2661@ha /* 0x8065A178@ha */
/* 803BF604  38 83 A1 78 */	addi r4, r3, lit_2661@l /* 0x8065A178@l */
/* 803BF608  80 A5 00 04 */	lwz r5, 4(r5)
/* 803BF60C  7F C3 F3 78 */	mr r3, r30
/* 803BF610  4C C6 31 82 */	crclr 6
/* 803BF614  4B C9 C3 09 */	bl gfxprint_printf
lbl_803BF618:
/* 803BF618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF61C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BF620  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BF624  7C 08 03 A6 */	mtlr r0
/* 803BF628  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF62C  4E 80 00 20 */	blr 
