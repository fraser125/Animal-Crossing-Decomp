lbl_8058B6E0:
/* 8058B6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B6E4  7C 08 02 A6 */	mflr r0
/* 8058B6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B6F0  7C 7F 1B 78 */	mr r31, r3
/* 8058B6F4  80 03 08 A0 */	lwz r0, 0x8a0(r3)
/* 8058B6F8  28 00 00 00 */	cmplwi r0, 0
/* 8058B6FC  40 82 00 44 */	bne lbl_8058B740
/* 8058B700  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058B704  7F E5 FB 78 */	mr r5, r31
/* 8058B708  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058B70C  7C 86 23 78 */	mr r6, r4
/* 8058B710  3C 83 00 02 */	addis r4, r3, 2
/* 8058B714  38 60 00 2C */	li r3, 0x2c
/* 8058B718  81 24 60 A0 */	lwz r9, 0x60a0(r4)
/* 8058B71C  38 80 00 04 */	li r4, 4
/* 8058B720  38 E0 FF FF */	li r7, -1
/* 8058B724  39 00 00 00 */	li r8, 0
/* 8058B728  81 89 00 00 */	lwz r12, 0(r9)
/* 8058B72C  7D 89 03 A6 */	mtctr r12
/* 8058B730  4E 80 04 21 */	bctrl 
/* 8058B734  28 03 00 00 */	cmplwi r3, 0
/* 8058B738  41 82 00 08 */	beq lbl_8058B740
/* 8058B73C  90 7F 08 A0 */	stw r3, 0x8a0(r31)
lbl_8058B740:
/* 8058B740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B748  7C 08 03 A6 */	mtlr r0
/* 8058B74C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B750  4E 80 00 20 */	blr 
