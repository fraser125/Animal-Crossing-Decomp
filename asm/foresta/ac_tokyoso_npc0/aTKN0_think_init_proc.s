lbl_8058BC70:
/* 8058BC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BC74  7C 08 02 A6 */	mflr r0
/* 8058BC78  38 A0 00 00 */	li r5, 0
/* 8058BC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BC80  38 00 00 FE */	li r0, 0xfe
/* 8058BC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058BC88  7C 7F 1B 78 */	mr r31, r3
/* 8058BC8C  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 8058BC90  38 00 00 00 */	li r0, 0
/* 8058BC94  98 03 08 31 */	stb r0, 0x831(r3)
/* 8058BC98  48 00 03 09 */	bl aTKN0_setup_think_proc
/* 8058BC9C  38 00 00 14 */	li r0, 0x14
/* 8058BCA0  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8058BCA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058BCAC  7C 08 03 A6 */	mtlr r0
/* 8058BCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BCB4  4E 80 00 20 */	blr 
