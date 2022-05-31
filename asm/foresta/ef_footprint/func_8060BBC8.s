lbl_8060BBC8:
/* 8060BBC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060BBCC  7C 08 02 A6 */	mflr r0
/* 8060BBD0  7D 0A 43 78 */	mr r10, r8
/* 8060BBD4  7C E8 3B 78 */	mr r8, r7
/* 8060BBD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060BBDC  38 E1 00 10 */	addi r7, r1, 0x10
/* 8060BBE0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060BBE4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8060BBE8  7C 9E 23 78 */	mr r30, r4
/* 8060BBEC  38 81 00 14 */	addi r4, r1, 0x14
/* 8060BBF0  83 E3 00 00 */	lwz r31, 0(r3)
/* 8060BBF4  81 83 00 04 */	lwz r12, 4(r3)
/* 8060BBF8  80 03 00 08 */	lwz r0, 8(r3)
/* 8060BBFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060BC00  B0 A1 00 12 */	sth r5, 0x12(r1)
/* 8060BC04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060BC08  3D 63 00 02 */	addis r11, r3, 2
/* 8060BC0C  38 A0 00 00 */	li r5, 0
/* 8060BC10  B1 41 00 10 */	sth r10, 0x10(r1)
/* 8060BC14  38 60 00 2C */	li r3, 0x2c
/* 8060BC18  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8060BC1C  91 81 00 18 */	stw r12, 0x18(r1)
/* 8060BC20  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060BC24  91 21 00 08 */	stw r9, 8(r1)
/* 8060BC28  7F C9 F3 78 */	mr r9, r30
/* 8060BC2C  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8060BC30  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8060BC34  7D 89 03 A6 */	mtctr r12
/* 8060BC38  4E 80 04 21 */	bctrl 
/* 8060BC3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060BC40  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060BC44  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8060BC48  7C 08 03 A6 */	mtlr r0
/* 8060BC4C  38 21 00 30 */	addi r1, r1, 0x30
/* 8060BC50  4E 80 00 20 */	blr 
