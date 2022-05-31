lbl_8059CC28:
/* 8059CC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059CC2C  7C 08 02 A6 */	mflr r0
/* 8059CC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059CC34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059CC38  3B E0 00 00 */	li r31, 0
/* 8059CC3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8059CC40  7C 7E 1B 78 */	mr r30, r3
/* 8059CC44  38 7E 00 28 */	addi r3, r30, 0x28
/* 8059CC48  4B E4 13 3D */	bl mPlib_Check_tree_shaken
/* 8059CC4C  2C 03 00 01 */	cmpwi r3, 1
/* 8059CC50  40 82 00 14 */	bne lbl_8059CC64
/* 8059CC54  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064A118@ha */
/* 8059CC58  C0 03 A1 18 */	lfs f0, lit_467@l(r3)  /* 0x8064A118@l */
/* 8059CC5C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 8059CC60  48 00 00 94 */	b lbl_8059CCF4
lbl_8059CC64:
/* 8059CC64  38 7E 00 28 */	addi r3, r30, 0x28
/* 8059CC68  4B E3 F3 81 */	bl mPlib_Check_VibUnit_OneFrame
/* 8059CC6C  2C 03 00 01 */	cmpwi r3, 1
/* 8059CC70  40 82 00 28 */	bne lbl_8059CC98
/* 8059CC74  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064A11C@ha */
/* 8059CC78  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 8059CC7C  C0 03 A1 1C */	lfs f0, lit_468@l(r3)  /* 0x8064A11C@l */
/* 8059CC80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059CC84  40 80 00 14 */	bge lbl_8059CC98
/* 8059CC88  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064A118@ha */
/* 8059CC8C  C0 03 A1 18 */	lfs f0, lit_467@l(r3)  /* 0x8064A118@l */
/* 8059CC90  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 8059CC94  48 00 00 60 */	b lbl_8059CCF4
lbl_8059CC98:
/* 8059CC98  7F C3 F3 78 */	mr r3, r30
/* 8059CC9C  4B FF FE 31 */	bl aIKB_check_ball
/* 8059CCA0  2C 03 00 01 */	cmpwi r3, 1
/* 8059CCA4  40 82 00 14 */	bne lbl_8059CCB8
/* 8059CCA8  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064A118@ha */
/* 8059CCAC  C0 03 A1 18 */	lfs f0, lit_467@l(r3)  /* 0x8064A118@l */
/* 8059CCB0  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 8059CCB4  48 00 00 40 */	b lbl_8059CCF4
lbl_8059CCB8:
/* 8059CCB8  7F C3 F3 78 */	mr r3, r30
/* 8059CCBC  4B FF FE 61 */	bl aIKB_check_player_net
/* 8059CCC0  2C 03 00 01 */	cmpwi r3, 1
/* 8059CCC4  40 82 00 14 */	bne lbl_8059CCD8
/* 8059CCC8  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064A118@ha */
/* 8059CCCC  C0 03 A1 18 */	lfs f0, lit_467@l(r3)  /* 0x8064A118@l */
/* 8059CCD0  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 8059CCD4  48 00 00 20 */	b lbl_8059CCF4
lbl_8059CCD8:
/* 8059CCD8  7F C3 F3 78 */	mr r3, r30
/* 8059CCDC  4B FF FE CD */	bl aIKB_check_player_scoop
/* 8059CCE0  2C 03 00 01 */	cmpwi r3, 1
/* 8059CCE4  40 82 00 10 */	bne lbl_8059CCF4
/* 8059CCE8  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064A118@ha */
/* 8059CCEC  C0 03 A1 18 */	lfs f0, lit_467@l(r3)  /* 0x8064A118@l */
/* 8059CCF0  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
lbl_8059CCF4:
/* 8059CCF4  3C 60 80 65 */	lis r3, lit_469@ha /* 0x8064A120@ha */
/* 8059CCF8  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 8059CCFC  C0 03 A1 20 */	lfs f0, lit_469@l(r3)  /* 0x8064A120@l */
/* 8059CD00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059CD04  40 81 00 08 */	ble lbl_8059CD0C
/* 8059CD08  3B E0 00 01 */	li r31, 1
lbl_8059CD0C:
/* 8059CD0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059CD10  7F E3 FB 78 */	mr r3, r31
/* 8059CD14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059CD18  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059CD1C  7C 08 03 A6 */	mtlr r0
/* 8059CD20  38 21 00 10 */	addi r1, r1, 0x10
/* 8059CD24  4E 80 00 20 */	blr 
