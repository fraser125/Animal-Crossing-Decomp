lbl_80625AF8:
/* 80625AF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80625AFC  7C 08 02 A6 */	mflr r0
/* 80625B00  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80625B04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80625B08  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80625B0C  3D 65 00 02 */	addis r11, r5, 2
/* 80625B10  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80625B14  7C 9F 23 78 */	mr r31, r4
/* 80625B18  38 81 00 10 */	addi r4, r1, 0x10
/* 80625B1C  38 A0 00 00 */	li r5, 0
/* 80625B20  81 43 00 00 */	lwz r10, 0(r3)
/* 80625B24  81 83 00 04 */	lwz r12, 4(r3)
/* 80625B28  80 03 00 08 */	lwz r0, 8(r3)
/* 80625B2C  38 60 00 6D */	li r3, 0x6d
/* 80625B30  91 41 00 10 */	stw r10, 0x10(r1)
/* 80625B34  7D 0A 43 78 */	mr r10, r8
/* 80625B38  7C E8 3B 78 */	mr r8, r7
/* 80625B3C  38 E0 00 00 */	li r7, 0
/* 80625B40  91 81 00 14 */	stw r12, 0x14(r1)
/* 80625B44  90 01 00 18 */	stw r0, 0x18(r1)
/* 80625B48  91 21 00 08 */	stw r9, 8(r1)
/* 80625B4C  7F E9 FB 78 */	mr r9, r31
/* 80625B50  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80625B54  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80625B58  7D 89 03 A6 */	mtctr r12
/* 80625B5C  4E 80 04 21 */	bctrl 
/* 80625B60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80625B64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80625B68  7C 08 03 A6 */	mtlr r0
/* 80625B6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80625B70  4E 80 00 20 */	blr 