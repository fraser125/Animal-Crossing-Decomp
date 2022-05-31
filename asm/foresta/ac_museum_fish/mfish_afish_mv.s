lbl_8043A2CC:
/* 8043A2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043A2D0  7C 08 02 A6 */	mflr r0
/* 8043A2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043A2D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043A2DC  7C 9F 23 78 */	mr r31, r4
/* 8043A2E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8043A2E4  7C 7E 1B 78 */	mr r30, r3
/* 8043A2E8  4B FF A3 15 */	bl mfish_onefish_mv
/* 8043A2EC  7F C3 F3 78 */	mr r3, r30
/* 8043A2F0  7F E4 FB 78 */	mr r4, r31
/* 8043A2F4  4B FF FC 21 */	bl mfish_afish_base_mv
/* 8043A2F8  7F C3 F3 78 */	mr r3, r30
/* 8043A2FC  7F E4 FB 78 */	mr r4, r31
/* 8043A300  4B FF B9 91 */	bl Museum_Fish_BGCheck
/* 8043A304  A8 7E 06 40 */	lha r3, 0x640(r30)
/* 8043A308  2C 03 00 00 */	cmpwi r3, 0
/* 8043A30C  40 81 00 48 */	ble lbl_8043A354
/* 8043A310  38 03 FF FF */	addi r0, r3, -1
/* 8043A314  3C 60 80 64 */	lis r3, lit_840@ha /* 0x806442D8@ha */
/* 8043A318  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8043A31C  3C 80 80 64 */	lis r4, lit_1315@ha /* 0x80644334@ha */
/* 8043A320  C0 63 42 D8 */	lfs f3, lit_840@l(r3)  /* 0x806442D8@l */
/* 8043A324  C0 5E 05 F0 */	lfs f2, 0x5f0(r30)
/* 8043A328  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043A32C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8043A330  EC 42 00 28 */	fsubs f2, f2, f0
/* 8043A334  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8043A338  C0 84 43 34 */	lfs f4, lit_1315@l(r4)  /* 0x80644334@l */
/* 8043A33C  EC 01 00 2A */	fadds f0, f1, f0
/* 8043A340  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8043A344  EC 01 00 24 */	fdivs f0, f1, f0
/* 8043A348  EC 04 00 2A */	fadds f0, f4, f0
/* 8043A34C  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8043A350  48 00 00 44 */	b lbl_8043A394
lbl_8043A354:
/* 8043A354  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8043A358  3C A0 80 64 */	lis r5, lit_471@ha /* 0x8064425C@ha */
/* 8043A35C  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 8043A360  38 C5 42 5C */	addi r6, r5, lit_471@l /* 0x8064425C@l */
/* 8043A364  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043A368  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8043A36C  38 A4 42 D4 */	addi r5, r4, lit_839@l /* 0x806442D4@l */
/* 8043A370  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043A374  EC 01 00 32 */	fmuls f0, f1, f0
/* 8043A378  C0 86 00 00 */	lfs f4, 0(r6)
/* 8043A37C  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8043A380  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043A384  C0 64 00 00 */	lfs f3, 0(r4)
/* 8043A388  38 7E 00 44 */	addi r3, r30, 0x44
/* 8043A38C  EC 24 00 2A */	fadds f1, f4, f0
/* 8043A390  4B F8 0F 05 */	bl add_calc2
lbl_8043A394:
/* 8043A394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043A398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043A39C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043A3A0  7C 08 03 A6 */	mtlr r0
/* 8043A3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8043A3A8  4E 80 00 20 */	blr 
