lbl_8063E9DC:
/* 8063E9DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063E9E0  7C 08 02 A6 */	mflr r0
/* 8063E9E4  7C AA 2B 78 */	mr r10, r5
/* 8063E9E8  7C 65 1B 78 */	mr r5, r3
/* 8063E9EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063E9F0  38 00 00 10 */	li r0, 0x10
/* 8063E9F4  39 00 00 10 */	li r8, 0x10
/* 8063E9F8  39 20 00 01 */	li r9, 1
/* 8063E9FC  90 C1 00 08 */	stw r6, 8(r1)
/* 8063EA00  7C 86 23 78 */	mr r6, r4
/* 8063EA04  38 80 00 00 */	li r4, 0
/* 8063EA08  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063EA0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063EA10  80 67 00 00 */	lwz r3, 0(r7)
/* 8063EA14  38 E0 00 10 */	li r7, 0x10
/* 8063EA18  4B DA 6B A9 */	bl two_tex_scroll_dolphin
/* 8063EA1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063EA20  7C 08 03 A6 */	mtlr r0
/* 8063EA24  38 21 00 20 */	addi r1, r1, 0x20
/* 8063EA28  4E 80 00 20 */	blr 
