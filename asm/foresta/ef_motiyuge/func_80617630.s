lbl_80617630:
/* 80617630  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80617634  7C 08 02 A6 */	mflr r0
/* 80617638  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061763C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80617640  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80617644  3D 65 00 02 */	addis r11, r5, 2
/* 80617648  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8061764C  7C 9F 23 78 */	mr r31, r4
/* 80617650  38 81 00 10 */	addi r4, r1, 0x10
/* 80617654  38 A0 00 00 */	li r5, 0
/* 80617658  81 43 00 00 */	lwz r10, 0(r3)
/* 8061765C  81 83 00 04 */	lwz r12, 4(r3)
/* 80617660  80 03 00 08 */	lwz r0, 8(r3)
/* 80617664  38 60 00 68 */	li r3, 0x68
/* 80617668  91 41 00 10 */	stw r10, 0x10(r1)
/* 8061766C  7D 0A 43 78 */	mr r10, r8
/* 80617670  7C E8 3B 78 */	mr r8, r7
/* 80617674  38 E0 00 00 */	li r7, 0
/* 80617678  91 81 00 14 */	stw r12, 0x14(r1)
/* 8061767C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80617680  91 21 00 08 */	stw r9, 8(r1)
/* 80617684  7F E9 FB 78 */	mr r9, r31
/* 80617688  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061768C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80617690  7D 89 03 A6 */	mtctr r12
/* 80617694  4E 80 04 21 */	bctrl 
/* 80617698  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061769C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806176A0  7C 08 03 A6 */	mtlr r0
/* 806176A4  38 21 00 30 */	addi r1, r1, 0x30
/* 806176A8  4E 80 00 20 */	blr 
