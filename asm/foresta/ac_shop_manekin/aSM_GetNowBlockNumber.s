lbl_804A02D8:
/* 804A02D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A02DC  7C 08 02 A6 */	mflr r0
/* 804A02E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A02E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A02E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A02EC  7C 7E 1B 78 */	mr r30, r3
/* 804A02F0  80 03 00 28 */	lwz r0, 0x28(r3)
/* 804A02F4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804A02F8  90 01 00 08 */	stw r0, 8(r1)
/* 804A02FC  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A0300  90 61 00 0C */	stw r3, 0xc(r1)
/* 804A0304  C0 21 00 08 */	lfs f1, 8(r1)
/* 804A0308  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A030C  4B F0 50 15 */	bl mFI_WposX2UtNumX
/* 804A0310  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804A0314  7C 7F 1B 78 */	mr r31, r3
/* 804A0318  4B F0 50 09 */	bl mFI_WposX2UtNumX
/* 804A031C  7F E0 26 70 */	srawi r0, r31, 4
/* 804A0320  7C 80 01 94 */	addze r4, r0
/* 804A0324  7C 60 26 70 */	srawi r0, r3, 4
/* 804A0328  90 9E 01 7C */	stw r4, 0x17c(r30)
/* 804A032C  7C 00 01 94 */	addze r0, r0
/* 804A0330  90 1E 01 80 */	stw r0, 0x180(r30)
/* 804A0334  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A0338  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A033C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A0340  7C 08 03 A6 */	mtlr r0
/* 804A0344  38 21 00 20 */	addi r1, r1, 0x20
/* 804A0348  4E 80 00 20 */	blr 
