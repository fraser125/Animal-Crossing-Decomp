lbl_8061A938:
/* 8061A938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061A93C  7C 08 02 A6 */	mflr r0
/* 8061A940  3C A0 80 65 */	lis r5, data_8064C9EC@ha /* 0x8064C9EC@ha */
/* 8061A944  39 40 00 00 */	li r10, 0
/* 8061A948  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061A94C  39 25 C9 EC */	addi r9, r5, data_8064C9EC@l /* 0x8064C9EC@l */
/* 8061A950  C0 09 00 00 */	lfs f0, 0(r9)
/* 8061A954  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061A958  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8061A95C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8061A960  3D 65 00 02 */	addis r11, r5, 2
/* 8061A964  7C 89 23 78 */	mr r9, r4
/* 8061A968  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8061A96C  38 00 00 00 */	li r0, 0
/* 8061A970  38 81 00 14 */	addi r4, r1, 0x14
/* 8061A974  38 A0 00 00 */	li r5, 0
/* 8061A978  C0 23 00 04 */	lfs f1, 4(r3)
/* 8061A97C  B1 01 00 10 */	sth r8, 0x10(r1)
/* 8061A980  7C E8 3B 78 */	mr r8, r7
/* 8061A984  EC 01 00 2A */	fadds f0, f1, f0
/* 8061A988  38 E1 00 10 */	addi r7, r1, 0x10
/* 8061A98C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8061A990  83 C3 00 00 */	lwz r30, 0(r3)
/* 8061A994  83 E3 00 04 */	lwz r31, 4(r3)
/* 8061A998  81 83 00 08 */	lwz r12, 8(r3)
/* 8061A99C  38 60 00 17 */	li r3, 0x17
/* 8061A9A0  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8061A9A4  93 E1 00 18 */	stw r31, 0x18(r1)
/* 8061A9A8  91 81 00 1C */	stw r12, 0x1c(r1)
/* 8061A9AC  90 01 00 08 */	stw r0, 8(r1)
/* 8061A9B0  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061A9B4  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061A9B8  7D 89 03 A6 */	mtctr r12
/* 8061A9BC  4E 80 04 21 */	bctrl 
/* 8061A9C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061A9C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061A9C8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8061A9CC  7C 08 03 A6 */	mtlr r0
/* 8061A9D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8061A9D4  4E 80 00 20 */	blr 
