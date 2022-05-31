lbl_80517700:
/* 80517700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517704  7C 08 02 A6 */	mflr r0
/* 80517708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051770C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517710  93 C1 00 08 */	stw r30, 8(r1)
/* 80517714  7C 7E 1B 78 */	mr r30, r3
/* 80517718  A0 83 00 06 */	lhz r4, 6(r3)
/* 8051771C  3F E4 FF FF */	addis r31, r4, 0xffff
/* 80517720  3B FF 2F BB */	addi r31, r31, 0x2fbb
/* 80517724  4B FF FC F1 */	bl aCD1_before_wait
/* 80517728  3C 80 80 6A */	lis r4, se_no@ha /* 0x8069FE6C@ha */
/* 8051772C  7F C3 F3 78 */	mr r3, r30
/* 80517730  38 84 FE 6C */	addi r4, r4, se_no@l /* 0x8069FE6C@l */
/* 80517734  38 BE 00 28 */	addi r5, r30, 0x28
/* 80517738  7C 84 F8 AE */	lbzx r4, r4, r31
/* 8051773C  48 11 68 09 */	bl sAdo_OngenPos
/* 80517740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517748  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051774C  7C 08 03 A6 */	mtlr r0
/* 80517750  38 21 00 10 */	addi r1, r1, 0x10
/* 80517754  4E 80 00 20 */	blr 
