lbl_80621C78:
/* 80621C78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80621C7C  7C 08 02 A6 */	mflr r0
/* 80621C80  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 80621C84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80621C88  39 6A 85 38 */	addi r11, r10, common_data@l /* 0x81138538@l */
/* 80621C8C  7D 0A 43 78 */	mr r10, r8
/* 80621C90  7C E8 3B 78 */	mr r8, r7
/* 80621C94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80621C98  3D 6B 00 02 */	addis r11, r11, 2
/* 80621C9C  38 E1 00 10 */	addi r7, r1, 0x10
/* 80621CA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80621CA4  7C 9E 23 78 */	mr r30, r4
/* 80621CA8  38 81 00 14 */	addi r4, r1, 0x14
/* 80621CAC  83 E3 00 00 */	lwz r31, 0(r3)
/* 80621CB0  81 83 00 04 */	lwz r12, 4(r3)
/* 80621CB4  80 03 00 08 */	lwz r0, 8(r3)
/* 80621CB8  38 60 00 57 */	li r3, 0x57
/* 80621CBC  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80621CC0  38 A0 00 00 */	li r5, 0
/* 80621CC4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80621CC8  91 81 00 18 */	stw r12, 0x18(r1)
/* 80621CCC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80621CD0  91 21 00 08 */	stw r9, 8(r1)
/* 80621CD4  7F C9 F3 78 */	mr r9, r30
/* 80621CD8  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80621CDC  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80621CE0  7D 89 03 A6 */	mtctr r12
/* 80621CE4  4E 80 04 21 */	bctrl 
/* 80621CE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80621CEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80621CF0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80621CF4  7C 08 03 A6 */	mtlr r0
/* 80621CF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80621CFC  4E 80 00 20 */	blr 
