lbl_8050BBF4:
/* 8050BBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050BBF8  7C 08 02 A6 */	mflr r0
/* 8050BBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050BC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050BC04  7C 7F 1B 78 */	mr r31, r3
/* 8050BC08  93 C1 00 08 */	stw r30, 8(r1)
/* 8050BC0C  7C 9E 23 78 */	mr r30, r4
/* 8050BC10  4B FF FC 61 */	bl aHG_player_check
/* 8050BC14  2C 03 00 01 */	cmpwi r3, 1
/* 8050BC18  40 82 00 18 */	bne lbl_8050BC30
/* 8050BC1C  7F E3 FB 78 */	mr r3, r31
/* 8050BC20  7F C4 F3 78 */	mr r4, r30
/* 8050BC24  38 A0 00 00 */	li r5, 0
/* 8050BC28  48 00 04 4D */	bl aHG_setupAction
/* 8050BC2C  48 00 00 DC */	b lbl_8050BD08
lbl_8050BC30:
/* 8050BC30  A0 7F 00 98 */	lhz r3, 0x98(r31)
/* 8050BC34  54 60 DF BD */	rlwinm. r0, r3, 0x1b, 0x1e, 0x1e
/* 8050BC38  54 64 DE FE */	rlwinm r4, r3, 0x1b, 0x1b, 0x1f
/* 8050BC3C  40 82 00 34 */	bne lbl_8050BC70
/* 8050BC40  88 7F 00 98 */	lbz r3, 0x98(r31)
/* 8050BC44  54 60 F7 BD */	rlwinm. r0, r3, 0x1e, 0x1e, 0x1e
/* 8050BC48  54 63 F6 FE */	rlwinm r3, r3, 0x1e, 0x1b, 0x1f
/* 8050BC4C  40 82 00 24 */	bne lbl_8050BC70
/* 8050BC50  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8050BC54  40 82 00 1C */	bne lbl_8050BC70
/* 8050BC58  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8050BC5C  40 82 00 14 */	bne lbl_8050BC70
/* 8050BC60  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 8050BC64  40 82 00 0C */	bne lbl_8050BC70
/* 8050BC68  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8050BC6C  41 82 00 34 */	beq lbl_8050BCA0
lbl_8050BC70:
/* 8050BC70  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 8050BC74  2C 00 00 00 */	cmpwi r0, 0
/* 8050BC78  40 82 00 1C */	bne lbl_8050BC94
/* 8050BC7C  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 8050BC80  3C 63 00 01 */	addis r3, r3, 1
/* 8050BC84  38 03 80 00 */	addi r0, r3, -32768
/* 8050BC88  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8050BC8C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8050BC90  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_8050BC94:
/* 8050BC94  38 00 00 01 */	li r0, 1
/* 8050BC98  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8050BC9C  48 00 00 34 */	b lbl_8050BCD0
lbl_8050BCA0:
/* 8050BCA0  7F E3 FB 78 */	mr r3, r31
/* 8050BCA4  4B FF FC 41 */	bl aHG_check_threshold
/* 8050BCA8  2C 03 00 01 */	cmpwi r3, 1
/* 8050BCAC  40 82 00 1C */	bne lbl_8050BCC8
/* 8050BCB0  4B B5 10 45 */	bl fqrand
/* 8050BCB4  3C 60 80 65 */	lis r3, lit_510@ha /* 0x80648E10@ha */
/* 8050BCB8  C0 43 8E 10 */	lfs f2, lit_510@l(r3)  /* 0x80648E10@l */
/* 8050BCBC  EC 02 00 72 */	fmuls f0, f2, f1
/* 8050BCC0  EC 02 00 2A */	fadds f0, f2, f0
/* 8050BCC4  D0 1F 01 80 */	stfs f0, 0x180(r31)
lbl_8050BCC8:
/* 8050BCC8  38 00 00 00 */	li r0, 0
/* 8050BCCC  90 1F 01 88 */	stw r0, 0x188(r31)
lbl_8050BCD0:
/* 8050BCD0  3C 60 80 65 */	lis r3, lit_438@ha /* 0x80648DF8@ha */
/* 8050BCD4  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 8050BCD8  C0 03 8D F8 */	lfs f0, lit_438@l(r3)  /* 0x80648DF8@l */
/* 8050BCDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050BCE0  4C 40 13 82 */	cror 2, 0, 2
/* 8050BCE4  40 82 00 14 */	bne lbl_8050BCF8
/* 8050BCE8  7F E3 FB 78 */	mr r3, r31
/* 8050BCEC  7F C4 F3 78 */	mr r4, r30
/* 8050BCF0  4B FF F8 E5 */	bl aHG_decide_next_act_idx_wait_move
/* 8050BCF4  48 00 00 14 */	b lbl_8050BD08
lbl_8050BCF8:
/* 8050BCF8  7F E3 FB 78 */	mr r3, r31
/* 8050BCFC  38 BF 00 28 */	addi r5, r31, 0x28
/* 8050BD00  38 80 00 A8 */	li r4, 0xa8
/* 8050BD04  48 12 22 41 */	bl sAdo_OngenPos
lbl_8050BD08:
/* 8050BD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050BD0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050BD10  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050BD14  7C 08 03 A6 */	mtlr r0
/* 8050BD18  38 21 00 10 */	addi r1, r1, 0x10
/* 8050BD1C  4E 80 00 20 */	blr 
