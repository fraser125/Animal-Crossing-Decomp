lbl_8061A568:
/* 8061A568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061A56C  7C 08 02 A6 */	mflr r0
/* 8061A570  7C E8 3B 78 */	mr r8, r7
/* 8061A574  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061A578  38 00 00 00 */	li r0, 0
/* 8061A57C  38 E1 00 10 */	addi r7, r1, 0x10
/* 8061A580  81 23 00 00 */	lwz r9, 0(r3)
/* 8061A584  81 83 00 04 */	lwz r12, 4(r3)
/* 8061A588  81 43 00 08 */	lwz r10, 8(r3)
/* 8061A58C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061A590  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8061A594  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061A598  3D 63 00 02 */	addis r11, r3, 2
/* 8061A59C  38 A0 00 00 */	li r5, 0
/* 8061A5A0  91 21 00 14 */	stw r9, 0x14(r1)
/* 8061A5A4  7C 89 23 78 */	mr r9, r4
/* 8061A5A8  38 81 00 14 */	addi r4, r1, 0x14
/* 8061A5AC  38 60 00 16 */	li r3, 0x16
/* 8061A5B0  91 41 00 1C */	stw r10, 0x1c(r1)
/* 8061A5B4  39 40 00 00 */	li r10, 0
/* 8061A5B8  91 81 00 18 */	stw r12, 0x18(r1)
/* 8061A5BC  90 01 00 08 */	stw r0, 8(r1)
/* 8061A5C0  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061A5C4  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061A5C8  7D 89 03 A6 */	mtctr r12
/* 8061A5CC  4E 80 04 21 */	bctrl 
/* 8061A5D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061A5D4  7C 08 03 A6 */	mtlr r0
/* 8061A5D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8061A5DC  4E 80 00 20 */	blr 
