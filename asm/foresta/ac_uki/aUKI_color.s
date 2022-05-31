lbl_804AE5D4:
/* 804AE5D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AE5D8  7C 08 02 A6 */	mflr r0
/* 804AE5DC  38 A0 03 8F */	li r5, 0x38f
/* 804AE5E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AE5E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AE5E8  7C 7F 1B 78 */	mr r31, r3
/* 804AE5EC  3C 60 80 69 */	lis r3, lit_524@ha /* 0x8068F95C@ha */
/* 804AE5F0  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804AE5F4  38 83 F9 5C */	addi r4, r3, lit_524@l /* 0x8068F95C@l */
/* 804AE5F8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804AE5FC  38 61 00 08 */	addi r3, r1, 8
/* 804AE600  90 C1 00 08 */	stw r6, 8(r1)
/* 804AE604  90 01 00 0C */	stw r0, 0xc(r1)
/* 804AE608  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804AE60C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AE610  4B EE 59 A9 */	bl mCoBG_GetWaterHeight_File
/* 804AE614  3C 60 80 64 */	lis r3, lit_722@ha /* 0x80645FAC@ha */
/* 804AE618  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 804AE61C  C0 03 5F AC */	lfs f0, lit_722@l(r3)  /* 0x80645FAC@l */
/* 804AE620  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AE624  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AE628  40 80 00 38 */	bge lbl_804AE660
/* 804AE62C  38 7F 02 98 */	addi r3, r31, 0x298
/* 804AE630  38 80 00 64 */	li r4, 0x64
/* 804AE634  38 A0 FF CC */	li r5, -52
/* 804AE638  4B FF F1 7D */	bl aUKI_chase_color
/* 804AE63C  38 7F 02 9C */	addi r3, r31, 0x29c
/* 804AE640  38 80 00 64 */	li r4, 0x64
/* 804AE644  38 A0 FF CC */	li r5, -52
/* 804AE648  4B FF F1 6D */	bl aUKI_chase_color
/* 804AE64C  38 7F 02 A0 */	addi r3, r31, 0x2a0
/* 804AE650  38 80 00 80 */	li r4, 0x80
/* 804AE654  38 A0 FF D5 */	li r5, -43
/* 804AE658  4B FF F1 5D */	bl aUKI_chase_color
/* 804AE65C  48 00 00 34 */	b lbl_804AE690
lbl_804AE660:
/* 804AE660  38 7F 02 98 */	addi r3, r31, 0x298
/* 804AE664  38 80 00 FF */	li r4, 0xff
/* 804AE668  38 A0 00 34 */	li r5, 0x34
/* 804AE66C  4B FF F1 49 */	bl aUKI_chase_color
/* 804AE670  38 7F 02 9C */	addi r3, r31, 0x29c
/* 804AE674  38 80 00 FF */	li r4, 0xff
/* 804AE678  38 A0 00 34 */	li r5, 0x34
/* 804AE67C  4B FF F1 39 */	bl aUKI_chase_color
/* 804AE680  38 7F 02 A0 */	addi r3, r31, 0x2a0
/* 804AE684  38 80 00 FF */	li r4, 0xff
/* 804AE688  38 A0 00 2B */	li r5, 0x2b
/* 804AE68C  4B FF F1 29 */	bl aUKI_chase_color
lbl_804AE690:
/* 804AE690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AE694  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AE698  7C 08 03 A6 */	mtlr r0
/* 804AE69C  38 21 00 20 */	addi r1, r1, 0x20
/* 804AE6A0  4E 80 00 20 */	blr 
