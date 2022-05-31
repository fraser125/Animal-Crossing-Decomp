lbl_8059FCAC:
/* 8059FCAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059FCB0  7C 08 02 A6 */	mflr r0
/* 8059FCB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059FCB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8059FCBC  4B AF B2 19 */	bl func_8009AED4
/* 8059FCC0  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 8059FCC4  7C 7F 1B 78 */	mr r31, r3
/* 8059FCC8  7C 9D 23 78 */	mr r29, r4
/* 8059FCCC  3B C0 00 00 */	li r30, 0
/* 8059FCD0  2C 00 00 20 */	cmpwi r0, 0x20
/* 8059FCD4  41 82 00 08 */	beq lbl_8059FCDC
/* 8059FCD8  48 00 00 40 */	b lbl_8059FD18
lbl_8059FCDC:
/* 8059FCDC  4B FF FF 6D */	bl aITT_check_flower
/* 8059FCE0  2C 03 00 00 */	cmpwi r3, 0
/* 8059FCE4  40 82 00 B4 */	bne lbl_8059FD98
/* 8059FCE8  7F E3 FB 78 */	mr r3, r31
/* 8059FCEC  7F A5 EB 78 */	mr r5, r29
/* 8059FCF0  38 80 00 01 */	li r4, 1
/* 8059FCF4  48 00 07 31 */	bl aITT_setupAction
/* 8059FCF8  3C 80 80 65 */	lis r4, lit_471@ha /* 0x8064A268@ha */
/* 8059FCFC  3C 60 80 65 */	lis r3, lit_472@ha /* 0x8064A26C@ha */
/* 8059FD00  C0 24 A2 68 */	lfs f1, lit_471@l(r4)  /* 0x8064A268@l */
/* 8059FD04  3B C0 00 01 */	li r30, 1
/* 8059FD08  C0 03 A2 6C */	lfs f0, lit_472@l(r3)  /* 0x8064A26C@l */
/* 8059FD0C  D0 3F 01 EC */	stfs f1, 0x1ec(r31)
/* 8059FD10  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 8059FD14  48 00 00 84 */	b lbl_8059FD98
lbl_8059FD18:
/* 8059FD18  4B FF FD D5 */	bl aITT_check_ball
/* 8059FD1C  2C 03 00 01 */	cmpwi r3, 1
/* 8059FD20  40 82 00 14 */	bne lbl_8059FD34
/* 8059FD24  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064A270@ha */
/* 8059FD28  C0 03 A2 70 */	lfs f0, lit_473@l(r3)  /* 0x8064A270@l */
/* 8059FD2C  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 8059FD30  48 00 00 40 */	b lbl_8059FD70
lbl_8059FD34:
/* 8059FD34  7F E3 FB 78 */	mr r3, r31
/* 8059FD38  4B FF FE 05 */	bl aITT_check_player_net
/* 8059FD3C  2C 03 00 01 */	cmpwi r3, 1
/* 8059FD40  40 82 00 14 */	bne lbl_8059FD54
/* 8059FD44  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064A270@ha */
/* 8059FD48  C0 03 A2 70 */	lfs f0, lit_473@l(r3)  /* 0x8064A270@l */
/* 8059FD4C  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 8059FD50  48 00 00 20 */	b lbl_8059FD70
lbl_8059FD54:
/* 8059FD54  7F E3 FB 78 */	mr r3, r31
/* 8059FD58  4B FF FE 71 */	bl aITT_check_player_scoop
/* 8059FD5C  2C 03 00 01 */	cmpwi r3, 1
/* 8059FD60  40 82 00 10 */	bne lbl_8059FD70
/* 8059FD64  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064A270@ha */
/* 8059FD68  C0 03 A2 70 */	lfs f0, lit_473@l(r3)  /* 0x8064A270@l */
/* 8059FD6C  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
lbl_8059FD70:
/* 8059FD70  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064A274@ha */
/* 8059FD74  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 8059FD78  C0 03 A2 74 */	lfs f0, lit_474@l(r3)  /* 0x8064A274@l */
/* 8059FD7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FD80  40 81 00 18 */	ble lbl_8059FD98
/* 8059FD84  7F E3 FB 78 */	mr r3, r31
/* 8059FD88  7F A5 EB 78 */	mr r5, r29
/* 8059FD8C  38 80 00 00 */	li r4, 0
/* 8059FD90  48 00 06 95 */	bl aITT_setupAction
/* 8059FD94  3B C0 00 01 */	li r30, 1
lbl_8059FD98:
/* 8059FD98  7F C3 F3 78 */	mr r3, r30
/* 8059FD9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8059FDA0  4B AF B1 81 */	bl func_8009AF20
/* 8059FDA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059FDA8  7C 08 03 A6 */	mtlr r0
/* 8059FDAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8059FDB0  4E 80 00 20 */	blr 
