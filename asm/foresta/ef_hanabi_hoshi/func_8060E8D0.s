lbl_8060E8D0:
/* 8060E8D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060E8D4  7C 08 02 A6 */	mflr r0
/* 8060E8D8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8060E8DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060E8E0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8060E8E4  3D 65 00 02 */	addis r11, r5, 2
/* 8060E8E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060E8EC  7C 9F 23 78 */	mr r31, r4
/* 8060E8F0  38 81 00 10 */	addi r4, r1, 0x10
/* 8060E8F4  38 A0 00 00 */	li r5, 0
/* 8060E8F8  81 43 00 00 */	lwz r10, 0(r3)
/* 8060E8FC  81 83 00 04 */	lwz r12, 4(r3)
/* 8060E900  80 03 00 08 */	lwz r0, 8(r3)
/* 8060E904  38 60 00 29 */	li r3, 0x29
/* 8060E908  91 41 00 10 */	stw r10, 0x10(r1)
/* 8060E90C  7D 0A 43 78 */	mr r10, r8
/* 8060E910  7C E8 3B 78 */	mr r8, r7
/* 8060E914  38 E0 00 00 */	li r7, 0
/* 8060E918  91 81 00 14 */	stw r12, 0x14(r1)
/* 8060E91C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060E920  91 21 00 08 */	stw r9, 8(r1)
/* 8060E924  7F E9 FB 78 */	mr r9, r31
/* 8060E928  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8060E92C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8060E930  7D 89 03 A6 */	mtctr r12
/* 8060E934  4E 80 04 21 */	bctrl 
/* 8060E938  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060E93C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060E940  7C 08 03 A6 */	mtlr r0
/* 8060E944  38 21 00 30 */	addi r1, r1, 0x30
/* 8060E948  4E 80 00 20 */	blr 
