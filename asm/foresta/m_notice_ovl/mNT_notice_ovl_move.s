lbl_805EB6BC:
/* 805EB6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EB6C0  7C 08 02 A6 */	mflr r0
/* 805EB6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EB6C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EB6CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805EB6D0  7C 7E 1B 78 */	mr r30, r3
/* 805EB6D4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805EB6D8  3B E4 02 04 */	addi r31, r4, 0x204
/* 805EB6DC  4B FF FE F9 */	bl mNT_stick_area_check
/* 805EB6E0  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 805EB6E4  7F C3 F3 78 */	mr r3, r30
/* 805EB6E8  7D 89 03 A6 */	mtctr r12
/* 805EB6EC  4E 80 04 21 */	bctrl 
/* 805EB6F0  80 1F 00 04 */	lwz r0, 4(r31)
/* 805EB6F4  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CE2FC@ha */
/* 805EB6F8  38 A3 E2 FC */	addi r5, r3, ovl_move_proc@l /* 0x806CE2FC@l */
/* 805EB6FC  7F C3 F3 78 */	mr r3, r30
/* 805EB700  54 00 10 3A */	slwi r0, r0, 2
/* 805EB704  7F E4 FB 78 */	mr r4, r31
/* 805EB708  7D 85 00 2E */	lwzx r12, r5, r0
/* 805EB70C  7D 89 03 A6 */	mtctr r12
/* 805EB710  4E 80 04 21 */	bctrl 
/* 805EB714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EB718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EB71C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EB720  7C 08 03 A6 */	mtlr r0
/* 805EB724  38 21 00 10 */	addi r1, r1, 0x10
/* 805EB728  4E 80 00 20 */	blr 
