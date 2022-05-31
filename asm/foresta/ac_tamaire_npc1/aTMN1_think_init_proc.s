lbl_8058AE8C:
/* 8058AE8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AE90  7C 08 02 A6 */	mflr r0
/* 8058AE94  38 A0 00 00 */	li r5, 0
/* 8058AE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AE9C  38 00 00 FE */	li r0, 0xfe
/* 8058AEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058AEA4  7C 7F 1B 78 */	mr r31, r3
/* 8058AEA8  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 8058AEAC  38 00 00 00 */	li r0, 0
/* 8058AEB0  98 03 08 31 */	stb r0, 0x831(r3)
/* 8058AEB4  48 00 03 99 */	bl aTMN1_setup_think_proc
/* 8058AEB8  38 60 00 00 */	li r3, 0
/* 8058AEBC  38 00 00 17 */	li r0, 0x17
/* 8058AEC0  90 7F 07 D8 */	stw r3, 0x7d8(r31)
/* 8058AEC4  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8058AEC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058AECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AED0  7C 08 03 A6 */	mtlr r0
/* 8058AED4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AED8  4E 80 00 20 */	blr 
