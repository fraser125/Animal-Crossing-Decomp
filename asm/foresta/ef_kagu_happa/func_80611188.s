lbl_80611188:
/* 80611188  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061118C  7C 08 02 A6 */	mflr r0
/* 80611190  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80611194  90 01 00 34 */	stw r0, 0x34(r1)
/* 80611198  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8061119C  3D 65 00 02 */	addis r11, r5, 2
/* 806111A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806111A4  7C 9F 23 78 */	mr r31, r4
/* 806111A8  38 81 00 10 */	addi r4, r1, 0x10
/* 806111AC  38 A0 00 00 */	li r5, 0
/* 806111B0  81 43 00 00 */	lwz r10, 0(r3)
/* 806111B4  81 83 00 04 */	lwz r12, 4(r3)
/* 806111B8  80 03 00 08 */	lwz r0, 8(r3)
/* 806111BC  38 60 00 50 */	li r3, 0x50
/* 806111C0  91 41 00 10 */	stw r10, 0x10(r1)
/* 806111C4  7D 0A 43 78 */	mr r10, r8
/* 806111C8  7C E8 3B 78 */	mr r8, r7
/* 806111CC  38 E0 00 00 */	li r7, 0
/* 806111D0  91 81 00 14 */	stw r12, 0x14(r1)
/* 806111D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 806111D8  91 21 00 08 */	stw r9, 8(r1)
/* 806111DC  7F E9 FB 78 */	mr r9, r31
/* 806111E0  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 806111E4  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 806111E8  7D 89 03 A6 */	mtctr r12
/* 806111EC  4E 80 04 21 */	bctrl 
/* 806111F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806111F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806111F8  7C 08 03 A6 */	mtlr r0
/* 806111FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80611200  4E 80 00 20 */	blr 
