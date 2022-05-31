lbl_805B9F78:
/* 805B9F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9F7C  7C 08 02 A6 */	mflr r0
/* 805B9F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9F84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9F88  7C 7F 1B 78 */	mr r31, r3
/* 805B9F8C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B9F90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B9F94  7C 9E 23 78 */	mr r30, r4
/* 805B9F98  4B DB 70 7D */	bl cKF_SkeletonInfo_R_play
/* 805B9F9C  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805B9FA0  7F E3 FB 78 */	mr r3, r31
/* 805B9FA4  7F C4 F3 78 */	mr r4, r30
/* 805B9FA8  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 805B9FAC  FC 00 00 1E */	fctiwz f0, f0
/* 805B9FB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B9FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9FB8  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 805B9FBC  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805B9FC0  7D 89 03 A6 */	mtctr r12
/* 805B9FC4  4E 80 04 21 */	bctrl 
/* 805B9FC8  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 805B9FCC  7F E3 FB 78 */	mr r3, r31
/* 805B9FD0  B0 01 00 08 */	sth r0, 8(r1)
/* 805B9FD4  4B FF FB 8D */	bl aSHOP_ctrl_light
/* 805B9FD8  2C 03 00 00 */	cmpwi r3, 0
/* 805B9FDC  41 82 00 18 */	beq lbl_805B9FF4
/* 805B9FE0  38 61 00 08 */	addi r3, r1, 8
/* 805B9FE4  38 80 3F FF */	li r4, 0x3fff
/* 805B9FE8  38 A0 01 40 */	li r5, 0x140
/* 805B9FEC  4B E0 0C 0D */	bl chase_s
/* 805B9FF0  48 00 00 14 */	b lbl_805BA004
lbl_805B9FF4:
/* 805B9FF4  38 61 00 08 */	addi r3, r1, 8
/* 805B9FF8  38 80 00 00 */	li r4, 0
/* 805B9FFC  38 A0 01 40 */	li r5, 0x140
/* 805BA000  4B E0 0B F9 */	bl chase_s
lbl_805BA004:
/* 805BA004  A8 01 00 08 */	lha r0, 8(r1)
/* 805BA008  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 805BA00C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA010  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BA014  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BA018  7C 08 03 A6 */	mtlr r0
/* 805BA01C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA020  4E 80 00 20 */	blr 
