lbl_8052A360:
/* 8052A360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052A364  7C 08 02 A6 */	mflr r0
/* 8052A368  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052A36C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052A370  7C 7F 1B 78 */	mr r31, r3
/* 8052A374  38 9F 00 28 */	addi r4, r31, 0x28
/* 8052A378  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052A37C  3B C0 00 00 */	li r30, 0
/* 8052A380  4B FF FF 0D */	bl aHM1_check_moveRange
/* 8052A384  2C 03 00 01 */	cmpwi r3, 1
/* 8052A388  40 82 00 5C */	bne lbl_8052A3E4
/* 8052A38C  38 7F 00 0C */	addi r3, r31, 0xc
/* 8052A390  38 9F 00 28 */	addi r4, r31, 0x28
/* 8052A394  4B E9 0D 9D */	bl search_position_angleY
/* 8052A398  7C 7E 1B 78 */	mr r30, r3
/* 8052A39C  4B E9 07 55 */	bl sin_s
/* 8052A3A0  3C 60 80 65 */	lis r3, lit_522@ha /* 0x80649240@ha */
/* 8052A3A4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8052A3A8  38 83 92 40 */	addi r4, r3, lit_522@l /* 0x80649240@l */
/* 8052A3AC  7F C3 F3 78 */	mr r3, r30
/* 8052A3B0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8052A3B4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8052A3B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052A3BC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8052A3C0  4B E9 06 DD */	bl cos_s
/* 8052A3C4  3C 60 80 65 */	lis r3, lit_522@ha /* 0x80649240@ha */
/* 8052A3C8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8052A3CC  C0 43 92 40 */	lfs f2, lit_522@l(r3)  /* 0x80649240@l */
/* 8052A3D0  3B C0 00 03 */	li r30, 3
/* 8052A3D4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8052A3D8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052A3DC  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8052A3E0  48 00 00 C0 */	b lbl_8052A4A0
lbl_8052A3E4:
/* 8052A3E4  7F E3 FB 78 */	mr r3, r31
/* 8052A3E8  38 9F 00 28 */	addi r4, r31, 0x28
/* 8052A3EC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8052A3F0  38 C1 00 10 */	addi r6, r1, 0x10
/* 8052A3F4  4B FF FE D9 */	bl aHM1_check_inBlock
/* 8052A3F8  2C 03 00 01 */	cmpwi r3, 1
/* 8052A3FC  40 82 00 A4 */	bne lbl_8052A4A0
/* 8052A400  88 BF 00 08 */	lbz r5, 8(r31)
/* 8052A404  38 61 00 0C */	addi r3, r1, 0xc
/* 8052A408  88 DF 00 09 */	lbz r6, 9(r31)
/* 8052A40C  38 81 00 08 */	addi r4, r1, 8
/* 8052A410  7C A5 07 74 */	extsb r5, r5
/* 8052A414  7C C6 07 74 */	extsb r6, r6
/* 8052A418  4B E7 B7 61 */	bl mFI_BkNum2WposXZ
/* 8052A41C  88 1F 00 08 */	lbz r0, 8(r31)
/* 8052A420  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8052A424  7C 00 07 74 */	extsb r0, r0
/* 8052A428  7C 05 00 00 */	cmpw r5, r0
/* 8052A42C  41 82 00 30 */	beq lbl_8052A45C
/* 8052A430  7C A0 02 78 */	xor r0, r5, r0
/* 8052A434  3C 60 80 6A */	lis r3, offset@ha /* 0x806A1270@ha */
/* 8052A438  7C 04 0E 70 */	srawi r4, r0, 1
/* 8052A43C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8052A440  7C 00 28 38 */	and r0, r0, r5
/* 8052A444  38 63 12 70 */	addi r3, r3, offset@l /* 0x806A1270@l */
/* 8052A448  7C 00 20 50 */	subf r0, r0, r4
/* 8052A44C  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 8052A450  7C 03 04 2E */	lfsx f0, r3, r0
/* 8052A454  EC 01 00 2A */	fadds f0, f1, f0
/* 8052A458  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_8052A45C:
/* 8052A45C  88 1F 00 09 */	lbz r0, 9(r31)
/* 8052A460  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8052A464  7C 00 07 74 */	extsb r0, r0
/* 8052A468  7C 05 00 00 */	cmpw r5, r0
/* 8052A46C  41 82 00 30 */	beq lbl_8052A49C
/* 8052A470  7C A0 02 78 */	xor r0, r5, r0
/* 8052A474  3C 60 80 6A */	lis r3, offset@ha /* 0x806A1270@ha */
/* 8052A478  7C 04 0E 70 */	srawi r4, r0, 1
/* 8052A47C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8052A480  7C 00 28 38 */	and r0, r0, r5
/* 8052A484  38 63 12 70 */	addi r3, r3, offset@l /* 0x806A1270@l */
/* 8052A488  7C 00 20 50 */	subf r0, r0, r4
/* 8052A48C  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 8052A490  7C 03 04 2E */	lfsx f0, r3, r0
/* 8052A494  EC 01 00 2A */	fadds f0, f1, f0
/* 8052A498  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_8052A49C:
/* 8052A49C  3B C0 00 03 */	li r30, 3
lbl_8052A4A0:
/* 8052A4A0  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 8052A4A4  7C 00 F3 78 */	or r0, r0, r30
/* 8052A4A8  98 1F 09 58 */	stb r0, 0x958(r31)
/* 8052A4AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052A4B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052A4B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052A4B8  7C 08 03 A6 */	mtlr r0
/* 8052A4BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8052A4C0  4E 80 00 20 */	blr 
