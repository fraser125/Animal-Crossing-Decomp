lbl_80619AE0:
/* 80619AE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80619AE4  7C 08 02 A6 */	mflr r0
/* 80619AE8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80619AEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80619AF0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80619AF4  3D 65 00 02 */	addis r11, r5, 2
/* 80619AF8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80619AFC  7C 9F 23 78 */	mr r31, r4
/* 80619B00  38 81 00 10 */	addi r4, r1, 0x10
/* 80619B04  38 A0 00 00 */	li r5, 0
/* 80619B08  81 43 00 00 */	lwz r10, 0(r3)
/* 80619B0C  81 83 00 04 */	lwz r12, 4(r3)
/* 80619B10  80 03 00 08 */	lwz r0, 8(r3)
/* 80619B14  38 60 00 4A */	li r3, 0x4a
/* 80619B18  91 41 00 10 */	stw r10, 0x10(r1)
/* 80619B1C  7D 0A 43 78 */	mr r10, r8
/* 80619B20  7C E8 3B 78 */	mr r8, r7
/* 80619B24  38 E0 00 00 */	li r7, 0
/* 80619B28  91 81 00 14 */	stw r12, 0x14(r1)
/* 80619B2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80619B30  91 21 00 08 */	stw r9, 8(r1)
/* 80619B34  7F E9 FB 78 */	mr r9, r31
/* 80619B38  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80619B3C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80619B40  7D 89 03 A6 */	mtctr r12
/* 80619B44  4E 80 04 21 */	bctrl 
/* 80619B48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80619B4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80619B50  7C 08 03 A6 */	mtlr r0
/* 80619B54  38 21 00 30 */	addi r1, r1, 0x30
/* 80619B58  4E 80 00 20 */	blr 
