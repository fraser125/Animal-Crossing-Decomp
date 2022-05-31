lbl_8059CE10:
/* 8059CE10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059CE14  7C 08 02 A6 */	mflr r0
/* 8059CE18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059CE1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059CE20  7C 7F 1B 78 */	mr r31, r3
/* 8059CE24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059CE28  7C 9E 23 78 */	mr r30, r4
/* 8059CE2C  7F C3 F3 78 */	mr r3, r30
/* 8059CE30  4B E3 C8 11 */	bl get_player_actor_withoutCheck
/* 8059CE34  7C 64 1B 78 */	mr r4, r3
/* 8059CE38  38 7F 00 28 */	addi r3, r31, 0x28
/* 8059CE3C  38 84 00 28 */	addi r4, r4, 0x28
/* 8059CE40  4B E1 E2 F1 */	bl search_position_angleY
/* 8059CE44  B0 7F 00 B6 */	sth r3, 0xb6(r31)
/* 8059CE48  7F E3 FB 78 */	mr r3, r31
/* 8059CE4C  4B FF FD DD */	bl aIKB_check_patience
/* 8059CE50  2C 03 00 01 */	cmpwi r3, 1
/* 8059CE54  40 82 00 18 */	bne lbl_8059CE6C
/* 8059CE58  7F E3 FB 78 */	mr r3, r31
/* 8059CE5C  7F C5 F3 78 */	mr r5, r30
/* 8059CE60  38 80 00 00 */	li r4, 0
/* 8059CE64  48 00 01 C9 */	bl aIKB_setupAction
/* 8059CE68  48 00 00 C8 */	b lbl_8059CF30
lbl_8059CE6C:
/* 8059CE6C  80 7F 02 34 */	lwz r3, 0x234(r31)
/* 8059CE70  2C 03 00 00 */	cmpwi r3, 0
/* 8059CE74  40 82 00 B4 */	bne lbl_8059CF28
/* 8059CE78  80 1F 02 38 */	lwz r0, 0x238(r31)
/* 8059CE7C  3C 60 80 6C */	lis r3, angle_table@ha /* 0x806C34C4@ha */
/* 8059CE80  38 83 34 C4 */	addi r4, r3, angle_table@l /* 0x806C34C4@l */
/* 8059CE84  38 A0 00 80 */	li r5, 0x80
/* 8059CE88  54 00 0F BC */	rlwinm r0, r0, 1, 0x1e, 0x1e
/* 8059CE8C  38 7F 00 DE */	addi r3, r31, 0xde
/* 8059CE90  7C 84 02 AE */	lhax r4, r4, r0
/* 8059CE94  4B E1 DC B1 */	bl chase_angle
/* 8059CE98  80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 8059CE9C  2C 03 00 00 */	cmpwi r3, 0
/* 8059CEA0  40 82 00 7C */	bne lbl_8059CF1C
/* 8059CEA4  80 7F 02 38 */	lwz r3, 0x238(r31)
/* 8059CEA8  2C 03 00 00 */	cmpwi r3, 0
/* 8059CEAC  40 82 00 5C */	bne lbl_8059CF08
/* 8059CEB0  4B AB FE 45 */	bl fqrand
/* 8059CEB4  3C 80 80 65 */	lis r4, lit_506@ha /* 0x8064A12C@ha */
/* 8059CEB8  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064A108@ha */
/* 8059CEBC  C0 44 A1 2C */	lfs f2, lit_506@l(r4)  /* 0x8064A12C@l */
/* 8059CEC0  C0 03 A1 08 */	lfs f0, lit_418@l(r3)  /* 0x8064A108@l */
/* 8059CEC4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059CEC8  EC 22 08 2A */	fadds f1, f2, f1
/* 8059CECC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059CED0  FC 00 00 1E */	fctiwz f0, f0
/* 8059CED4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059CED8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059CEDC  90 1F 02 34 */	stw r0, 0x234(r31)
/* 8059CEE0  4B AB FE 15 */	bl fqrand
/* 8059CEE4  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064A108@ha */
/* 8059CEE8  C0 03 A1 08 */	lfs f0, lit_418@l(r3)  /* 0x8064A108@l */
/* 8059CEEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059CEF0  FC 00 00 1E */	fctiwz f0, f0
/* 8059CEF4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059CEF8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8059CEFC  38 03 00 03 */	addi r0, r3, 3
/* 8059CF00  90 1F 02 38 */	stw r0, 0x238(r31)
/* 8059CF04  48 00 00 0C */	b lbl_8059CF10
lbl_8059CF08:
/* 8059CF08  38 03 FF FF */	addi r0, r3, -1
/* 8059CF0C  90 1F 02 38 */	stw r0, 0x238(r31)
lbl_8059CF10:
/* 8059CF10  38 00 00 1E */	li r0, 0x1e
/* 8059CF14  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8059CF18  48 00 00 18 */	b lbl_8059CF30
lbl_8059CF1C:
/* 8059CF1C  38 03 FF FF */	addi r0, r3, -1
/* 8059CF20  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8059CF24  48 00 00 0C */	b lbl_8059CF30
lbl_8059CF28:
/* 8059CF28  38 03 FF FF */	addi r0, r3, -1
/* 8059CF2C  90 1F 02 34 */	stw r0, 0x234(r31)
lbl_8059CF30:
/* 8059CF30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059CF34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059CF38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059CF3C  7C 08 03 A6 */	mtlr r0
/* 8059CF40  38 21 00 20 */	addi r1, r1, 0x20
/* 8059CF44  4E 80 00 20 */	blr 
