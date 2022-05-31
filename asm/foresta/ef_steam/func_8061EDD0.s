lbl_8061EDD0:
/* 8061EDD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061EDD4  7C 08 02 A6 */	mflr r0
/* 8061EDD8  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 8061EDDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061EDE0  39 6A 85 38 */	addi r11, r10, common_data@l /* 0x81138538@l */
/* 8061EDE4  7D 0A 43 78 */	mr r10, r8
/* 8061EDE8  7C E8 3B 78 */	mr r8, r7
/* 8061EDEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8061EDF0  3D 6B 00 02 */	addis r11, r11, 2
/* 8061EDF4  38 E1 00 10 */	addi r7, r1, 0x10
/* 8061EDF8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8061EDFC  7C 9E 23 78 */	mr r30, r4
/* 8061EE00  38 81 00 14 */	addi r4, r1, 0x14
/* 8061EE04  83 E3 00 00 */	lwz r31, 0(r3)
/* 8061EE08  81 83 00 04 */	lwz r12, 4(r3)
/* 8061EE0C  80 03 00 08 */	lwz r0, 8(r3)
/* 8061EE10  38 60 00 3F */	li r3, 0x3f
/* 8061EE14  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8061EE18  38 A0 00 00 */	li r5, 0
/* 8061EE1C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8061EE20  91 81 00 18 */	stw r12, 0x18(r1)
/* 8061EE24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061EE28  91 21 00 08 */	stw r9, 8(r1)
/* 8061EE2C  7F C9 F3 78 */	mr r9, r30
/* 8061EE30  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061EE34  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061EE38  7D 89 03 A6 */	mtctr r12
/* 8061EE3C  4E 80 04 21 */	bctrl 
/* 8061EE40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061EE44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061EE48  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8061EE4C  7C 08 03 A6 */	mtlr r0
/* 8061EE50  38 21 00 30 */	addi r1, r1, 0x30
/* 8061EE54  4E 80 00 20 */	blr 
