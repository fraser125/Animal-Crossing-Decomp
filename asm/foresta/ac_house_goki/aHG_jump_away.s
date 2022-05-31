lbl_8050BAFC:
/* 8050BAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050BB00  7C 08 02 A6 */	mflr r0
/* 8050BB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050BB08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050BB0C  7C 7F 1B 78 */	mr r31, r3
/* 8050BB10  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8050BB14  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8050BB18  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050BB1C  40 82 00 10 */	bne lbl_8050BB2C
/* 8050BB20  38 A0 00 00 */	li r5, 0
/* 8050BB24  48 00 05 51 */	bl aHG_setupAction
/* 8050BB28  48 00 00 30 */	b lbl_8050BB58
lbl_8050BB2C:
/* 8050BB2C  4B FF F8 D5 */	bl aHG_anime_proc
/* 8050BB30  3C 60 80 65 */	lis r3, lit_438@ha /* 0x80648DF8@ha */
/* 8050BB34  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8050BB38  C0 03 8D F8 */	lfs f0, lit_438@l(r3)  /* 0x80648DF8@l */
/* 8050BB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050BB40  40 80 00 10 */	bge lbl_8050BB50
/* 8050BB44  3C 60 80 65 */	lis r3, lit_607@ha /* 0x80648E30@ha */
/* 8050BB48  C0 03 8E 30 */	lfs f0, lit_607@l(r3)  /* 0x80648E30@l */
/* 8050BB4C  D0 1F 00 78 */	stfs f0, 0x78(r31)
lbl_8050BB50:
/* 8050BB50  7F E3 FB 78 */	mr r3, r31
/* 8050BB54  4B FF FD 91 */	bl aHG_check_threshold
lbl_8050BB58:
/* 8050BB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050BB5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050BB60  7C 08 03 A6 */	mtlr r0
/* 8050BB64  38 21 00 10 */	addi r1, r1, 0x10
/* 8050BB68  4E 80 00 20 */	blr 
