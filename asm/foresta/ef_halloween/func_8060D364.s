lbl_8060D364:
/* 8060D364  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060D368  7C 08 02 A6 */	mflr r0
/* 8060D36C  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 8060D370  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060D374  39 6A 85 38 */	addi r11, r10, common_data@l /* 0x81138538@l */
/* 8060D378  7D 0A 43 78 */	mr r10, r8
/* 8060D37C  7C E8 3B 78 */	mr r8, r7
/* 8060D380  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060D384  3D 6B 00 02 */	addis r11, r11, 2
/* 8060D388  38 E1 00 10 */	addi r7, r1, 0x10
/* 8060D38C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8060D390  7C 9E 23 78 */	mr r30, r4
/* 8060D394  38 81 00 14 */	addi r4, r1, 0x14
/* 8060D398  83 E3 00 00 */	lwz r31, 0(r3)
/* 8060D39C  81 83 00 04 */	lwz r12, 4(r3)
/* 8060D3A0  80 03 00 08 */	lwz r0, 8(r3)
/* 8060D3A4  38 60 00 67 */	li r3, 0x67
/* 8060D3A8  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8060D3AC  38 A0 00 00 */	li r5, 0
/* 8060D3B0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8060D3B4  91 81 00 18 */	stw r12, 0x18(r1)
/* 8060D3B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060D3BC  91 21 00 08 */	stw r9, 8(r1)
/* 8060D3C0  7F C9 F3 78 */	mr r9, r30
/* 8060D3C4  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8060D3C8  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8060D3CC  7D 89 03 A6 */	mtctr r12
/* 8060D3D0  4E 80 04 21 */	bctrl 
/* 8060D3D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060D3D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060D3DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8060D3E0  7C 08 03 A6 */	mtlr r0
/* 8060D3E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8060D3E8  4E 80 00 20 */	blr 
