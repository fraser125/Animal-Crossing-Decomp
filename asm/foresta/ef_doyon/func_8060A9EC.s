lbl_8060A9EC:
/* 8060A9EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060A9F0  7C 08 02 A6 */	mflr r0
/* 8060A9F4  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 8060A9F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060A9FC  39 6A 85 38 */	addi r11, r10, common_data@l /* 0x81138538@l */
/* 8060AA00  7D 0A 43 78 */	mr r10, r8
/* 8060AA04  7C E8 3B 78 */	mr r8, r7
/* 8060AA08  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060AA0C  3D 6B 00 02 */	addis r11, r11, 2
/* 8060AA10  38 E1 00 10 */	addi r7, r1, 0x10
/* 8060AA14  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8060AA18  7C 9E 23 78 */	mr r30, r4
/* 8060AA1C  38 81 00 14 */	addi r4, r1, 0x14
/* 8060AA20  83 E3 00 00 */	lwz r31, 0(r3)
/* 8060AA24  81 83 00 04 */	lwz r12, 4(r3)
/* 8060AA28  80 03 00 08 */	lwz r0, 8(r3)
/* 8060AA2C  38 60 00 4F */	li r3, 0x4f
/* 8060AA30  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8060AA34  38 A0 00 00 */	li r5, 0
/* 8060AA38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8060AA3C  91 81 00 18 */	stw r12, 0x18(r1)
/* 8060AA40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060AA44  91 21 00 08 */	stw r9, 8(r1)
/* 8060AA48  7F C9 F3 78 */	mr r9, r30
/* 8060AA4C  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8060AA50  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8060AA54  7D 89 03 A6 */	mtctr r12
/* 8060AA58  4E 80 04 21 */	bctrl 
/* 8060AA5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060AA60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060AA64  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8060AA68  7C 08 03 A6 */	mtlr r0
/* 8060AA6C  38 21 00 30 */	addi r1, r1, 0x30
/* 8060AA70  4E 80 00 20 */	blr 