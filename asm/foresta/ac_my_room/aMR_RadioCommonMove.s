lbl_80473C8C:
/* 80473C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80473C90  7C 08 02 A6 */	mflr r0
/* 80473C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80473C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80473C9C  7C 9F 23 78 */	mr r31, r4
/* 80473CA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80473CA4  7C 7E 1B 78 */	mr r30, r3
/* 80473CA8  A8 03 01 30 */	lha r0, 0x130(r3)
/* 80473CAC  2C 00 00 01 */	cmpwi r0, 1
/* 80473CB0  40 82 00 24 */	bne lbl_80473CD4
/* 80473CB4  7F E3 FB 78 */	mr r3, r31
/* 80473CB8  7F C5 F3 78 */	mr r5, r30
/* 80473CBC  38 80 00 1B */	li r4, 0x1b
/* 80473CC0  38 C0 00 00 */	li r6, 0
/* 80473CC4  4B FF E0 C1 */	bl aMR_ReserveBgm
/* 80473CC8  38 00 00 00 */	li r0, 0
/* 80473CCC  B0 1E 01 30 */	sth r0, 0x130(r30)
/* 80473CD0  48 00 00 70 */	b lbl_80473D40
lbl_80473CD4:
/* 80473CD4  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 80473CD8  28 00 00 00 */	cmplwi r0, 0
/* 80473CDC  41 82 00 64 */	beq lbl_80473D40
/* 80473CE0  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 80473CE4  28 00 00 00 */	cmplwi r0, 0
/* 80473CE8  40 82 00 2C */	bne lbl_80473D14
/* 80473CEC  4B FF E1 65 */	bl aMR_OneMDSwitchOn_TheOtherSwitchOff
/* 80473CF0  7F E3 FB 78 */	mr r3, r31
/* 80473CF4  7F C4 F3 78 */	mr r4, r30
/* 80473CF8  4B FF E0 A5 */	bl aMR_ReserveDefaultBgm
/* 80473CFC  7F E3 FB 78 */	mr r3, r31
/* 80473D00  7F C4 F3 78 */	mr r4, r30
/* 80473D04  4B FF DF 59 */	bl aMR_ChangeMDBgm
/* 80473D08  38 00 00 00 */	li r0, 0
/* 80473D0C  98 1E 01 2C */	stb r0, 0x12c(r30)
/* 80473D10  48 00 00 30 */	b lbl_80473D40
lbl_80473D14:
/* 80473D14  4B FF E1 3D */	bl aMR_OneMDSwitchOn_TheOtherSwitchOff
/* 80473D18  7F E3 FB 78 */	mr r3, r31
/* 80473D1C  7F C5 F3 78 */	mr r5, r30
/* 80473D20  38 80 00 1B */	li r4, 0x1b
/* 80473D24  38 C0 00 00 */	li r6, 0
/* 80473D28  4B FF E0 5D */	bl aMR_ReserveBgm
/* 80473D2C  7F E3 FB 78 */	mr r3, r31
/* 80473D30  7F C4 F3 78 */	mr r4, r30
/* 80473D34  4B FF DF 29 */	bl aMR_ChangeMDBgm
/* 80473D38  38 00 00 01 */	li r0, 1
/* 80473D3C  98 1E 01 2C */	stb r0, 0x12c(r30)
lbl_80473D40:
/* 80473D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80473D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80473D48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80473D4C  7C 08 03 A6 */	mtlr r0
/* 80473D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80473D54  4E 80 00 20 */	blr 
