lbl_8063AB20:
/* 8063AB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063AB24  7C 08 02 A6 */	mflr r0
/* 8063AB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AB2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063AB30  93 C1 00 08 */	stw r30, 8(r1)
/* 8063AB34  7C 7E 1B 78 */	mr r30, r3
/* 8063AB38  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063AB3C  A8 03 08 2A */	lha r0, 0x82a(r3)
/* 8063AB40  2C 00 00 01 */	cmpwi r0, 1
/* 8063AB44  40 82 00 8C */	bne lbl_8063ABD0
/* 8063AB48  7F E3 FB 78 */	mr r3, r31
/* 8063AB4C  4B D3 64 C9 */	bl cKF_SkeletonInfo_R_play
/* 8063AB50  2C 03 00 01 */	cmpwi r3, 1
/* 8063AB54  41 82 00 70 */	beq lbl_8063ABC4
/* 8063AB58  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063AB5C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063AB60  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063AB64  A8 7E 08 10 */	lha r3, 0x810(r30)
/* 8063AB68  38 03 00 01 */	addi r0, r3, 1
/* 8063AB6C  B0 1E 08 10 */	sth r0, 0x810(r30)
/* 8063AB70  A8 1E 08 10 */	lha r0, 0x810(r30)
/* 8063AB74  2C 00 00 F2 */	cmpwi r0, 0xf2
/* 8063AB78  40 80 00 0C */	bge lbl_8063AB84
/* 8063AB7C  7C 00 07 35 */	extsh. r0, r0
/* 8063AB80  40 80 00 0C */	bge lbl_8063AB8C
lbl_8063AB84:
/* 8063AB84  38 00 00 00 */	li r0, 0
/* 8063AB88  B0 1E 08 10 */	sth r0, 0x810(r30)
lbl_8063AB8C:
/* 8063AB8C  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 8063AB90  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063AB94  41 82 00 70 */	beq lbl_8063AC04
/* 8063AB98  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063AB9C  41 82 00 68 */	beq lbl_8063AC04
/* 8063ABA0  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063ABA4  41 82 00 60 */	beq lbl_8063AC04
/* 8063ABA8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063ABAC  41 82 00 58 */	beq lbl_8063AC04
/* 8063ABB0  7F C3 F3 78 */	mr r3, r30
/* 8063ABB4  38 BE 00 08 */	addi r5, r30, 8
/* 8063ABB8  38 80 00 02 */	li r4, 2
/* 8063ABBC  4B FF 33 89 */	bl sAdo_OngenPos
/* 8063ABC0  48 00 00 44 */	b lbl_8063AC04
lbl_8063ABC4:
/* 8063ABC4  38 00 00 00 */	li r0, 0
/* 8063ABC8  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 8063ABCC  48 00 00 38 */	b lbl_8063AC04
lbl_8063ABD0:
/* 8063ABD0  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 8063ABD4  28 00 00 00 */	cmplwi r0, 0
/* 8063ABD8  41 82 00 2C */	beq lbl_8063AC04
/* 8063ABDC  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063ABE0  38 00 00 01 */	li r0, 1
/* 8063ABE4  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8063ABE8  7F E3 FB 78 */	mr r3, r31
/* 8063ABEC  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 8063ABF0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8063ABF4  4B D3 64 21 */	bl cKF_SkeletonInfo_R_play
/* 8063ABF8  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063ABFC  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063AC00  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063AC04:
/* 8063AC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063AC08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063AC0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063AC10  7C 08 03 A6 */	mtlr r0
/* 8063AC14  38 21 00 10 */	addi r1, r1, 0x10
/* 8063AC18  4E 80 00 20 */	blr 
