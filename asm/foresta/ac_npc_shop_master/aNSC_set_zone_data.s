lbl_80577C80:
/* 80577C80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80577C84  7C 08 02 A6 */	mflr r0
/* 80577C88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80577C8C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80577C90  7C 9F 23 78 */	mr r31, r4
/* 80577C94  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80577C98  7C 7E 1B 78 */	mr r30, r3
/* 80577C9C  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80577CA0  38 61 00 14 */	addi r3, r1, 0x14
/* 80577CA4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80577CA8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80577CAC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80577CB0  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80577CB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80577CB8  4B FF F0 99 */	bl func_80576D50
/* 80577CBC  28 1F 00 00 */	cmplwi r31, 0
/* 80577CC0  98 7E 09 A2 */	stb r3, 0x9a2(r30)
/* 80577CC4  41 82 00 28 */	beq lbl_80577CEC
/* 80577CC8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80577CCC  38 61 00 08 */	addi r3, r1, 8
/* 80577CD0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80577CD4  90 81 00 08 */	stw r4, 8(r1)
/* 80577CD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80577CDC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80577CE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80577CE4  4B FF F0 6D */	bl func_80576D50
/* 80577CE8  98 7E 09 A4 */	stb r3, 0x9a4(r30)
lbl_80577CEC:
/* 80577CEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80577CF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80577CF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80577CF8  7C 08 03 A6 */	mtlr r0
/* 80577CFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80577D00  4E 80 00 20 */	blr 