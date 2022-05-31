lbl_803FAA44:
/* 803FAA44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FAA48  7C 08 02 A6 */	mflr r0
/* 803FAA4C  38 80 00 08 */	li r4, 8
/* 803FAA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FAA54  38 00 00 00 */	li r0, 0
/* 803FAA58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FAA5C  7C 7F 1B 78 */	mr r31, r3
/* 803FAA60  90 03 00 00 */	stw r0, 0(r3)
/* 803FAA64  38 7F 00 14 */	addi r3, r31, 0x14
/* 803FAA68  90 1F 00 04 */	stw r0, 4(r31)
/* 803FAA6C  90 1F 00 08 */	stw r0, 8(r31)
/* 803FAA70  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803FAA74  4B C6 25 F5 */	bl bzero
/* 803FAA78  38 00 00 00 */	li r0, 0
/* 803FAA7C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803FAA80  90 1F 00 20 */	stw r0, 0x20(r31)
/* 803FAA84  90 1F 00 24 */	stw r0, 0x24(r31)
/* 803FAA88  90 1F 00 28 */	stw r0, 0x28(r31)
/* 803FAA8C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 803FAA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FAA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FAA98  7C 08 03 A6 */	mtlr r0
/* 803FAA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 803FAAA0  4E 80 00 20 */	blr 
