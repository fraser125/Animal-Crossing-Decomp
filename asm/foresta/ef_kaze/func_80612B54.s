lbl_80612B54:
/* 80612B54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80612B58  7C 08 02 A6 */	mflr r0
/* 80612B5C  7C E8 3B 78 */	mr r8, r7
/* 80612B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80612B64  38 00 00 00 */	li r0, 0
/* 80612B68  38 E1 00 10 */	addi r7, r1, 0x10
/* 80612B6C  81 23 00 00 */	lwz r9, 0(r3)
/* 80612B70  81 83 00 04 */	lwz r12, 4(r3)
/* 80612B74  81 43 00 08 */	lwz r10, 8(r3)
/* 80612B78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80612B7C  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80612B80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80612B84  3D 63 00 02 */	addis r11, r3, 2
/* 80612B88  38 A0 00 00 */	li r5, 0
/* 80612B8C  91 21 00 14 */	stw r9, 0x14(r1)
/* 80612B90  7C 89 23 78 */	mr r9, r4
/* 80612B94  38 81 00 14 */	addi r4, r1, 0x14
/* 80612B98  38 60 00 12 */	li r3, 0x12
/* 80612B9C  91 41 00 1C */	stw r10, 0x1c(r1)
/* 80612BA0  39 40 00 00 */	li r10, 0
/* 80612BA4  91 81 00 18 */	stw r12, 0x18(r1)
/* 80612BA8  90 01 00 08 */	stw r0, 8(r1)
/* 80612BAC  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80612BB0  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80612BB4  7D 89 03 A6 */	mtctr r12
/* 80612BB8  4E 80 04 21 */	bctrl 
/* 80612BBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80612BC0  7C 08 03 A6 */	mtlr r0
/* 80612BC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80612BC8  4E 80 00 20 */	blr 