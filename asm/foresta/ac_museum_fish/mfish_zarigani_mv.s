lbl_80457318:
/* 80457318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045731C  7C 08 02 A6 */	mflr r0
/* 80457320  3C E0 80 68 */	lis r7, suisou_pos@ha /* 0x80684E7C@ha */
/* 80457324  3C C0 80 64 */	lis r6, lit_527@ha /* 0x80644268@ha */
/* 80457328  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045732C  3C A0 80 64 */	lis r5, lit_839@ha /* 0x806442D4@ha */
/* 80457330  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80457334  7C 7F 1B 78 */	mr r31, r3
/* 80457338  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045733C  7C 9E 23 78 */	mr r30, r4
/* 80457340  A8 03 06 30 */	lha r0, 0x630(r3)
/* 80457344  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80457348  1D 00 00 0C */	mulli r8, r0, 0xc
/* 8045734C  38 07 4E 7C */	addi r0, r7, suisou_pos@l /* 0x80684E7C@l */
/* 80457350  38 E6 42 68 */	addi r7, r6, lit_527@l /* 0x80644268@l */
/* 80457354  38 C5 42 D4 */	addi r6, r5, lit_839@l /* 0x806442D4@l */
/* 80457358  C0 47 00 00 */	lfs f2, 0(r7)
/* 8045735C  7D 20 42 14 */	add r9, r0, r8
/* 80457360  81 09 00 00 */	lwz r8, 0(r9)
/* 80457364  38 A3 42 C4 */	addi r5, r3, lit_793@l /* 0x806442C4@l */
/* 80457368  80 E9 00 04 */	lwz r7, 4(r9)
/* 8045736C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80457370  80 09 00 08 */	lwz r0, 8(r9)
/* 80457374  91 01 00 08 */	stw r8, 8(r1)
/* 80457378  C0 66 00 00 */	lfs f3, 0(r6)
/* 8045737C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80457380  C0 85 00 00 */	lfs f4, 0(r5)
/* 80457384  90 01 00 10 */	stw r0, 0x10(r1)
/* 80457388  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8045738C  4B F6 3E 25 */	bl add_calc
/* 80457390  81 9F 00 34 */	lwz r12, 0x34(r31)
/* 80457394  7F E3 FB 78 */	mr r3, r31
/* 80457398  7F C4 F3 78 */	mr r4, r30
/* 8045739C  7D 89 03 A6 */	mtctr r12
/* 804573A0  4E 80 04 21 */	bctrl 
/* 804573A4  A8 BF 06 38 */	lha r5, 0x638(r31)
/* 804573A8  7F E3 FB 78 */	mr r3, r31
/* 804573AC  A8 1F 06 44 */	lha r0, 0x644(r31)
/* 804573B0  7F C4 F3 78 */	mr r4, r30
/* 804573B4  7C 05 02 14 */	add r0, r5, r0
/* 804573B8  B0 1F 06 38 */	sth r0, 0x638(r31)
/* 804573BC  4B FD E8 5D */	bl Museum_Fish_objchk_pos_set
/* 804573C0  7F E3 FB 78 */	mr r3, r31
/* 804573C4  7F C4 F3 78 */	mr r4, r30
/* 804573C8  4B FD E8 C9 */	bl Museum_Fish_BGCheck
/* 804573CC  38 61 00 08 */	addi r3, r1, 8
/* 804573D0  38 9F 05 A0 */	addi r4, r31, 0x5a0
/* 804573D4  7C 65 1B 78 */	mr r5, r3
/* 804573D8  4B F6 3B A1 */	bl xyz_t_sub
/* 804573DC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804573E0  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804573E4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804573E8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804573EC  4C 41 13 82 */	cror 2, 1, 2
/* 804573F0  40 82 00 0C */	bne lbl_804573FC
/* 804573F4  FC 20 18 90 */	fmr f1, f3
/* 804573F8  48 00 00 08 */	b lbl_80457400
lbl_804573FC:
/* 804573FC  FC 20 18 50 */	fneg f1, f3
lbl_80457400:
/* 80457400  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80457404  C0 81 00 08 */	lfs f4, 8(r1)
/* 80457408  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8045740C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80457410  4C 41 13 82 */	cror 2, 1, 2
/* 80457414  40 82 00 0C */	bne lbl_80457420
/* 80457418  FC 00 20 90 */	fmr f0, f4
/* 8045741C  48 00 00 08 */	b lbl_80457424
lbl_80457420:
/* 80457420  FC 00 20 50 */	fneg f0, f4
lbl_80457424:
/* 80457424  3C 80 80 64 */	lis r4, lit_8478@ha /* 0x806444CC@ha */
/* 80457428  3C 60 80 64 */	lis r3, lit_8131@ha /* 0x806444A8@ha */
/* 8045742C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80457430  C0 44 44 CC */	lfs f2, lit_8478@l(r4)  /* 0x806444CC@l */
/* 80457434  C0 23 44 A8 */	lfs f1, lit_8131@l(r3)  /* 0x806444A8@l */
/* 80457438  40 81 00 24 */	ble lbl_8045745C
/* 8045743C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80457440  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80457444  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80457448  4C 41 13 82 */	cror 2, 1, 2
/* 8045744C  40 82 00 08 */	bne lbl_80457454
/* 80457450  48 00 00 2C */	b lbl_8045747C
lbl_80457454:
/* 80457454  FC 80 20 50 */	fneg f4, f4
/* 80457458  48 00 00 24 */	b lbl_8045747C
lbl_8045745C:
/* 8045745C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80457460  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80457464  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80457468  4C 41 13 82 */	cror 2, 1, 2
/* 8045746C  40 82 00 0C */	bne lbl_80457478
/* 80457470  FC 80 18 90 */	fmr f4, f3
/* 80457474  48 00 00 08 */	b lbl_8045747C
lbl_80457478:
/* 80457478  FC 80 18 50 */	fneg f4, f3
lbl_8045747C:
/* 8045747C  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 80457480  EC 01 01 32 */	fmuls f0, f1, f4
/* 80457484  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80457488  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 8045748C  EC 22 00 2A */	fadds f1, f2, f0
/* 80457490  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 80457494  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80457498  41 80 00 18 */	blt lbl_804574B0
/* 8045749C  3C 60 80 45 */	lis r3, mfish_zarigani_jump_process@ha /* 0x80456F20@ha */
/* 804574A0  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 804574A4  38 03 6F 20 */	addi r0, r3, mfish_zarigani_jump_process@l /* 0x80456F20@l */
/* 804574A8  7C 04 00 40 */	cmplw r4, r0
/* 804574AC  41 82 00 14 */	beq lbl_804574C0
lbl_804574B0:
/* 804574B0  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 804574B4  60 00 02 00 */	ori r0, r0, 0x200
/* 804574B8  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 804574BC  D0 3F 05 A4 */	stfs f1, 0x5a4(r31)
lbl_804574C0:
/* 804574C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804574C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804574C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804574CC  7C 08 03 A6 */	mtlr r0
/* 804574D0  38 21 00 20 */	addi r1, r1, 0x20
/* 804574D4  4E 80 00 20 */	blr 
