lbl_804A0CF8:
/* 804A0CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A0CFC  7C 08 02 A6 */	mflr r0
/* 804A0D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A0D04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A0D08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A0D0C  7C 7E 1B 78 */	mr r30, r3
/* 804A0D10  80 03 00 28 */	lwz r0, 0x28(r3)
/* 804A0D14  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804A0D18  90 01 00 08 */	stw r0, 8(r1)
/* 804A0D1C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A0D20  90 61 00 0C */	stw r3, 0xc(r1)
/* 804A0D24  C0 21 00 08 */	lfs f1, 8(r1)
/* 804A0D28  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A0D2C  4B F0 45 F5 */	bl mFI_WposX2UtNumX
/* 804A0D30  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804A0D34  7C 7F 1B 78 */	mr r31, r3
/* 804A0D38  4B F0 45 E9 */	bl mFI_WposX2UtNumX
/* 804A0D3C  7F E0 26 70 */	srawi r0, r31, 4
/* 804A0D40  7C 80 01 94 */	addze r4, r0
/* 804A0D44  7C 60 26 70 */	srawi r0, r3, 4
/* 804A0D48  90 9E 01 7C */	stw r4, 0x17c(r30)
/* 804A0D4C  7C 00 01 94 */	addze r0, r0
/* 804A0D50  90 1E 01 80 */	stw r0, 0x180(r30)
/* 804A0D54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A0D58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A0D5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A0D60  7C 08 03 A6 */	mtlr r0
/* 804A0D64  38 21 00 20 */	addi r1, r1, 0x20
/* 804A0D68  4E 80 00 20 */	blr 
