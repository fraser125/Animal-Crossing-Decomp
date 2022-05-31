lbl_8059E6BC:
/* 8059E6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E6C0  7C 08 02 A6 */	mflr r0
/* 8059E6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E6C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E6CC  7C 7F 1B 78 */	mr r31, r3
/* 8059E6D0  93 C1 00 08 */	stw r30, 8(r1)
/* 8059E6D4  7C 9E 23 78 */	mr r30, r4
/* 8059E6D8  4B FF FB 8D */	bl aIMN_check_cut_tree
/* 8059E6DC  2C 03 00 01 */	cmpwi r3, 1
/* 8059E6E0  40 82 00 18 */	bne lbl_8059E6F8
/* 8059E6E4  7F E3 FB 78 */	mr r3, r31
/* 8059E6E8  7F C5 F3 78 */	mr r5, r30
/* 8059E6EC  38 80 00 09 */	li r4, 9
/* 8059E6F0  48 00 08 FD */	bl aIMN_setupAction
/* 8059E6F4  48 00 00 38 */	b lbl_8059E72C
lbl_8059E6F8:
/* 8059E6F8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8059E6FC  3C 60 80 65 */	lis r3, lit_595@ha /* 0x8064A1C0@ha */
/* 8059E700  FC 20 02 10 */	fabs f1, f0
/* 8059E704  C0 03 A1 C0 */	lfs f0, lit_595@l(r3)  /* 0x8064A1C0@l */
/* 8059E708  FC 20 08 18 */	frsp f1, f1
/* 8059E70C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059E710  40 80 00 14 */	bge lbl_8059E724
/* 8059E714  7F E3 FB 78 */	mr r3, r31
/* 8059E718  7F C5 F3 78 */	mr r5, r30
/* 8059E71C  38 80 00 05 */	li r4, 5
/* 8059E720  48 00 08 CD */	bl aIMN_setupAction
lbl_8059E724:
/* 8059E724  7F E3 FB 78 */	mr r3, r31
/* 8059E728  4B FF FA E1 */	bl aIMN_calc_twist_angl
lbl_8059E72C:
/* 8059E72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E734  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059E738  7C 08 03 A6 */	mtlr r0
/* 8059E73C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E740  4E 80 00 20 */	blr 
