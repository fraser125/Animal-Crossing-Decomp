lbl_805D600C:
/* 805D600C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805D6010  7C 08 02 A6 */	mflr r0
/* 805D6014  90 01 00 74 */	stw r0, 0x74(r1)
/* 805D6018  39 61 00 70 */	addi r11, r1, 0x70
/* 805D601C  4B AC 4E A9 */	bl func_8009AEC4
/* 805D6020  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D6024  7C BF 2B 78 */	mr r31, r5
/* 805D6028  83 64 00 00 */	lwz r27, 0(r4)
/* 805D602C  83 43 09 E0 */	lwz r26, 0x9e0(r3)
/* 805D6030  88 1A 06 A7 */	lbz r0, 0x6a7(r26)
/* 805D6034  28 00 00 00 */	cmplwi r0, 0
/* 805D6038  40 82 12 94 */	bne lbl_805D72CC
/* 805D603C  88 1A 06 98 */	lbz r0, 0x698(r26)
/* 805D6040  28 00 00 00 */	cmplwi r0, 0
/* 805D6044  41 82 06 60 */	beq lbl_805D66A4
/* 805D6048  88 1A 06 99 */	lbz r0, 0x699(r26)
/* 805D604C  28 00 00 09 */	cmplwi r0, 9
/* 805D6050  41 82 06 54 */	beq lbl_805D66A4
/* 805D6054  80 7A 06 80 */	lwz r3, 0x680(r26)
/* 805D6058  38 03 FF AE */	addi r0, r3, -82
/* 805D605C  90 1A 06 80 */	stw r0, 0x680(r26)
/* 805D6060  80 7A 06 84 */	lwz r3, 0x684(r26)
/* 805D6064  38 03 00 4F */	addi r0, r3, 0x4f
/* 805D6068  90 1A 06 84 */	stw r0, 0x684(r26)
/* 805D606C  80 1A 06 88 */	lwz r0, 0x688(r26)
/* 805D6070  80 7A 06 80 */	lwz r3, 0x680(r26)
/* 805D6074  1C 00 00 05 */	mulli r0, r0, 5
/* 805D6078  7C 03 02 14 */	add r0, r3, r0
/* 805D607C  90 1A 06 90 */	stw r0, 0x690(r26)
/* 805D6080  80 1A 06 8C */	lwz r0, 0x68c(r26)
/* 805D6084  80 7A 06 84 */	lwz r3, 0x684(r26)
/* 805D6088  1C 00 00 05 */	mulli r0, r0, 5
/* 805D608C  7C 03 02 14 */	add r0, r3, r0
/* 805D6090  90 1A 06 94 */	stw r0, 0x694(r26)
/* 805D6094  80 7A 06 90 */	lwz r3, 0x690(r26)
/* 805D6098  80 1A 06 80 */	lwz r0, 0x680(r26)
/* 805D609C  7C 03 00 51 */	subf. r0, r3, r0
/* 805D60A0  7F 80 00 D0 */	neg r28, r0
/* 805D60A4  41 80 00 08 */	blt lbl_805D60AC
/* 805D60A8  7C 1C 03 78 */	mr r28, r0
lbl_805D60AC:
/* 805D60AC  80 7A 06 94 */	lwz r3, 0x694(r26)
/* 805D60B0  80 1A 06 84 */	lwz r0, 0x684(r26)
/* 805D60B4  7C 03 00 51 */	subf. r0, r3, r0
/* 805D60B8  7F A0 00 D0 */	neg r29, r0
/* 805D60BC  41 80 00 08 */	blt lbl_805D60C4
/* 805D60C0  7C 1D 03 78 */	mr r29, r0
lbl_805D60C4:
/* 805D60C4  80 1A 06 84 */	lwz r0, 0x684(r26)
/* 805D60C8  7C 1D 00 50 */	subf r0, r29, r0
/* 805D60CC  90 1A 06 84 */	stw r0, 0x684(r26)
/* 805D60D0  80 1A 06 94 */	lwz r0, 0x694(r26)
/* 805D60D4  7C 1D 00 50 */	subf r0, r29, r0
/* 805D60D8  90 1A 06 94 */	stw r0, 0x694(r26)
/* 805D60DC  4B E3 60 F9 */	bl Matrix_push
/* 805D60E0  3C 60 80 65 */	lis r3, lit_1909@ha /* 0x8064B180@ha */
/* 805D60E4  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D60E8  38 A3 B1 80 */	addi r5, r3, lit_1909@l /* 0x8064B180@l */
/* 805D60EC  C0 64 B1 6C */	lfs f3, lit_605@l(r4)  /* 0x8064B16C@l */
/* 805D60F0  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D60F4  38 60 00 00 */	li r3, 0
/* 805D60F8  FC 40 08 90 */	fmr f2, f1
/* 805D60FC  4B E3 62 F1 */	bl Matrix_scale
/* 805D6100  80 7A 06 80 */	lwz r3, 0x680(r26)
/* 805D6104  3C A0 43 30 */	lis r5, 0x4330
/* 805D6108  80 1A 06 84 */	lwz r0, 0x684(r26)
/* 805D610C  3C C0 80 65 */	lis r6, lit_609@ha /* 0x8064B174@ha */
/* 805D6110  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805D6114  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805D6118  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D611C  C8 46 B1 74 */	lfd f2, lit_609@l(r6)  /* 0x8064B174@l */
/* 805D6120  90 81 00 24 */	stw r4, 0x24(r1)
/* 805D6124  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6128  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D612C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805D6130  38 60 00 01 */	li r3, 1
/* 805D6134  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D6138  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D613C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6140  90 A1 00 28 */	stw r5, 0x28(r1)
/* 805D6144  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805D6148  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D614C  4B E3 61 B5 */	bl Matrix_translate
/* 805D6150  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 805D6154  3C 00 43 30 */	lis r0, 0x4330
/* 805D6158  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D615C  90 61 00 34 */	stw r3, 0x34(r1)
/* 805D6160  38 A4 B1 74 */	addi r5, r4, lit_609@l /* 0x8064B174@l */
/* 805D6164  3C 80 80 65 */	lis r4, lit_2250@ha /* 0x8064B1A0@ha */
/* 805D6168  90 01 00 30 */	stw r0, 0x30(r1)
/* 805D616C  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064B16C@ha */
/* 805D6170  C8 25 00 00 */	lfd f1, 0(r5)
/* 805D6174  38 A4 B1 A0 */	addi r5, r4, lit_2250@l /* 0x8064B1A0@l */
/* 805D6178  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805D617C  38 83 B1 6C */	addi r4, r3, lit_605@l /* 0x8064B16C@l */
/* 805D6180  C0 45 00 00 */	lfs f2, 0(r5)
/* 805D6184  38 60 00 01 */	li r3, 1
/* 805D6188  EC 20 08 28 */	fsubs f1, f0, f1
/* 805D618C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6190  4B E3 62 5D */	bl Matrix_scale
/* 805D6194  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D6198  83 3B 02 D0 */	lwz r25, 0x2d0(r27)
/* 805D619C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D61A0  7F 63 DB 78 */	mr r3, r27
/* 805D61A4  90 19 00 00 */	stw r0, 0(r25)
/* 805D61A8  4B E3 72 2D */	bl _Matrix_to_Mtx_new
/* 805D61AC  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 805D61B0  90 79 00 04 */	stw r3, 4(r25)
/* 805D61B4  38 64 61 38 */	addi r3, r4, debug_mode@l /* 0x81166138@l */
/* 805D61B8  80 63 00 00 */	lwz r3, 0(r3)
/* 805D61BC  A8 03 16 98 */	lha r0, 0x1698(r3)
/* 805D61C0  2C 00 00 00 */	cmpwi r0, 0
/* 805D61C4  41 82 00 44 */	beq lbl_805D6208
/* 805D61C8  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805D61CC  38 03 00 80 */	addi r0, r3, 0x0080 /* 0xFA000080@l */
/* 805D61D0  90 19 00 08 */	stw r0, 8(r25)
/* 805D61D4  88 1A 06 A4 */	lbz r0, 0x6a4(r26)
/* 805D61D8  1C 00 00 03 */	mulli r0, r0, 3
/* 805D61DC  7C 9A 02 14 */	add r4, r26, r0
/* 805D61E0  88 04 06 21 */	lbz r0, 0x621(r4)
/* 805D61E4  88 64 06 20 */	lbz r3, 0x620(r4)
/* 805D61E8  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805D61EC  88 84 06 22 */	lbz r4, 0x622(r4)
/* 805D61F0  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805D61F4  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805D61F8  60 00 00 FF */	ori r0, r0, 0xff
/* 805D61FC  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D6200  3B 39 00 10 */	addi r25, r25, 0x10
/* 805D6204  48 00 00 20 */	b lbl_805D6224
lbl_805D6208:
/* 805D6208  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 805D620C  3C 60 5A 5A */	lis r3, 0x5A5A /* 0x5A5A5AFF@ha */
/* 805D6210  38 04 00 80 */	addi r0, r4, 0x0080 /* 0xFA000080@l */
/* 805D6214  90 19 00 08 */	stw r0, 8(r25)
/* 805D6218  38 03 5A FF */	addi r0, r3, 0x5AFF /* 0x5A5A5AFF@l */
/* 805D621C  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D6220  3B 39 00 10 */	addi r25, r25, 0x10
lbl_805D6224:
/* 805D6224  7F 24 CB 78 */	mr r4, r25
/* 805D6228  3C 00 DE 00 */	lis r0, 0xde00
/* 805D622C  3C 60 80 A4 */	lis r3, des_sen_waku_model@ha /* 0x80A47BF0@ha */
/* 805D6230  90 19 00 00 */	stw r0, 0(r25)
/* 805D6234  3B C3 7B F0 */	addi r30, r3, des_sen_waku_model@l /* 0x80A47BF0@l */
/* 805D6238  3B 39 00 08 */	addi r25, r25, 8
/* 805D623C  93 C4 00 04 */	stw r30, 4(r4)
/* 805D6240  93 3B 02 D0 */	stw r25, 0x2d0(r27)
/* 805D6244  4B E3 5F D1 */	bl Matrix_pull
/* 805D6248  4B E3 5F 8D */	bl Matrix_push
/* 805D624C  3C 60 80 65 */	lis r3, lit_1909@ha /* 0x8064B180@ha */
/* 805D6250  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D6254  38 A3 B1 80 */	addi r5, r3, lit_1909@l /* 0x8064B180@l */
/* 805D6258  C0 64 B1 6C */	lfs f3, lit_605@l(r4)  /* 0x8064B16C@l */
/* 805D625C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D6260  38 60 00 00 */	li r3, 0
/* 805D6264  FC 40 08 90 */	fmr f2, f1
/* 805D6268  4B E3 61 85 */	bl Matrix_scale
/* 805D626C  80 7A 06 80 */	lwz r3, 0x680(r26)
/* 805D6270  3C A0 43 30 */	lis r5, 0x4330
/* 805D6274  80 1A 06 94 */	lwz r0, 0x694(r26)
/* 805D6278  3C C0 80 65 */	lis r6, lit_609@ha /* 0x8064B174@ha */
/* 805D627C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805D6280  90 A1 00 30 */	stw r5, 0x30(r1)
/* 805D6284  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6288  C8 46 B1 74 */	lfd f2, lit_609@l(r6)  /* 0x8064B174@l */
/* 805D628C  90 81 00 34 */	stw r4, 0x34(r1)
/* 805D6290  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6294  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6298  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805D629C  38 60 00 01 */	li r3, 1
/* 805D62A0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D62A4  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D62A8  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D62AC  90 A1 00 28 */	stw r5, 0x28(r1)
/* 805D62B0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805D62B4  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D62B8  4B E3 60 49 */	bl Matrix_translate
/* 805D62BC  2C 1C 00 00 */	cmpwi r28, 0
/* 805D62C0  41 82 00 3C */	beq lbl_805D62FC
/* 805D62C4  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 805D62C8  3C 00 43 30 */	lis r0, 0x4330
/* 805D62CC  90 61 00 24 */	stw r3, 0x24(r1)
/* 805D62D0  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D62D4  3C 60 80 65 */	lis r3, lit_2250@ha /* 0x8064B1A0@ha */
/* 805D62D8  C8 44 B1 74 */	lfd f2, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D62DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D62E0  C0 03 B1 A0 */	lfs f0, lit_2250@l(r3)  /* 0x8064B1A0@l */
/* 805D62E4  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 805D62E8  EC 21 10 28 */	fsubs f1, f1, f2
/* 805D62EC  EC 01 00 2A */	fadds f0, f1, f0
/* 805D62F0  FC 00 00 1E */	fctiwz f0, f0
/* 805D62F4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805D62F8  83 81 00 3C */	lwz r28, 0x3c(r1)
lbl_805D62FC:
/* 805D62FC  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 805D6300  3C 00 43 30 */	lis r0, 0x4330
/* 805D6304  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D6308  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D630C  38 A4 B1 74 */	addi r5, r4, lit_609@l /* 0x8064B174@l */
/* 805D6310  3C 80 80 65 */	lis r4, lit_2250@ha /* 0x8064B1A0@ha */
/* 805D6314  90 01 00 40 */	stw r0, 0x40(r1)
/* 805D6318  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064B16C@ha */
/* 805D631C  C8 25 00 00 */	lfd f1, 0(r5)
/* 805D6320  38 A4 B1 A0 */	addi r5, r4, lit_2250@l /* 0x8064B1A0@l */
/* 805D6324  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6328  38 83 B1 6C */	addi r4, r3, lit_605@l /* 0x8064B16C@l */
/* 805D632C  C0 45 00 00 */	lfs f2, 0(r5)
/* 805D6330  38 60 00 01 */	li r3, 1
/* 805D6334  EC 20 08 28 */	fsubs f1, f0, f1
/* 805D6338  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D633C  4B E3 60 B1 */	bl Matrix_scale
/* 805D6340  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D6344  83 3B 02 D0 */	lwz r25, 0x2d0(r27)
/* 805D6348  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D634C  7F 63 DB 78 */	mr r3, r27
/* 805D6350  90 19 00 00 */	stw r0, 0(r25)
/* 805D6354  4B E3 70 81 */	bl _Matrix_to_Mtx_new
/* 805D6358  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 805D635C  90 79 00 04 */	stw r3, 4(r25)
/* 805D6360  38 64 61 38 */	addi r3, r4, debug_mode@l /* 0x81166138@l */
/* 805D6364  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6368  A8 03 16 98 */	lha r0, 0x1698(r3)
/* 805D636C  2C 00 00 00 */	cmpwi r0, 0
/* 805D6370  41 82 00 44 */	beq lbl_805D63B4
/* 805D6374  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805D6378  38 03 00 80 */	addi r0, r3, 0x0080 /* 0xFA000080@l */
/* 805D637C  90 19 00 08 */	stw r0, 8(r25)
/* 805D6380  88 1A 06 A4 */	lbz r0, 0x6a4(r26)
/* 805D6384  1C 00 00 03 */	mulli r0, r0, 3
/* 805D6388  7C 9A 02 14 */	add r4, r26, r0
/* 805D638C  88 04 06 21 */	lbz r0, 0x621(r4)
/* 805D6390  88 64 06 20 */	lbz r3, 0x620(r4)
/* 805D6394  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805D6398  88 84 06 22 */	lbz r4, 0x622(r4)
/* 805D639C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805D63A0  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805D63A4  60 00 00 FF */	ori r0, r0, 0xff
/* 805D63A8  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D63AC  3B 39 00 10 */	addi r25, r25, 0x10
/* 805D63B0  48 00 00 20 */	b lbl_805D63D0
lbl_805D63B4:
/* 805D63B4  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 805D63B8  3C 60 5A 5A */	lis r3, 0x5A5A /* 0x5A5A5AFF@ha */
/* 805D63BC  38 04 00 80 */	addi r0, r4, 0x0080 /* 0xFA000080@l */
/* 805D63C0  90 19 00 08 */	stw r0, 8(r25)
/* 805D63C4  38 03 5A FF */	addi r0, r3, 0x5AFF /* 0x5A5A5AFF@l */
/* 805D63C8  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D63CC  3B 39 00 10 */	addi r25, r25, 0x10
lbl_805D63D0:
/* 805D63D0  7F 23 CB 78 */	mr r3, r25
/* 805D63D4  3C 00 DE 00 */	lis r0, 0xde00
/* 805D63D8  90 19 00 00 */	stw r0, 0(r25)
/* 805D63DC  3B 39 00 08 */	addi r25, r25, 8
/* 805D63E0  93 C3 00 04 */	stw r30, 4(r3)
/* 805D63E4  93 3B 02 D0 */	stw r25, 0x2d0(r27)
/* 805D63E8  4B E3 5E 2D */	bl Matrix_pull
/* 805D63EC  4B E3 5D E9 */	bl Matrix_push
/* 805D63F0  3C 60 80 65 */	lis r3, lit_1909@ha /* 0x8064B180@ha */
/* 805D63F4  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D63F8  38 A3 B1 80 */	addi r5, r3, lit_1909@l /* 0x8064B180@l */
/* 805D63FC  C0 64 B1 6C */	lfs f3, lit_605@l(r4)  /* 0x8064B16C@l */
/* 805D6400  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D6404  38 60 00 00 */	li r3, 0
/* 805D6408  FC 40 08 90 */	fmr f2, f1
/* 805D640C  4B E3 5F E1 */	bl Matrix_scale
/* 805D6410  80 7A 06 80 */	lwz r3, 0x680(r26)
/* 805D6414  3C A0 43 30 */	lis r5, 0x4330
/* 805D6418  80 1A 06 84 */	lwz r0, 0x684(r26)
/* 805D641C  3C C0 80 65 */	lis r6, lit_609@ha /* 0x8064B174@ha */
/* 805D6420  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805D6424  90 A1 00 40 */	stw r5, 0x40(r1)
/* 805D6428  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D642C  C8 46 B1 74 */	lfd f2, lit_609@l(r6)  /* 0x8064B174@l */
/* 805D6430  90 81 00 44 */	stw r4, 0x44(r1)
/* 805D6434  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6438  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D643C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6440  38 60 00 01 */	li r3, 1
/* 805D6444  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6448  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D644C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6450  90 A1 00 38 */	stw r5, 0x38(r1)
/* 805D6454  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6458  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D645C  4B E3 5E A5 */	bl Matrix_translate
/* 805D6460  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 805D6464  3C 00 43 30 */	lis r0, 0x4330
/* 805D6468  90 61 00 34 */	stw r3, 0x34(r1)
/* 805D646C  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D6470  3C A0 80 65 */	lis r5, lit_2250@ha /* 0x8064B1A0@ha */
/* 805D6474  C8 44 B1 74 */	lfd f2, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D6478  90 01 00 30 */	stw r0, 0x30(r1)
/* 805D647C  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064B16C@ha */
/* 805D6480  38 83 B1 6C */	addi r4, r3, lit_605@l /* 0x8064B16C@l */
/* 805D6484  C0 25 B1 A0 */	lfs f1, lit_2250@l(r5)  /* 0x8064B1A0@l */
/* 805D6488  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805D648C  38 60 00 01 */	li r3, 1
/* 805D6490  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6494  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D6498  4B E3 5F 55 */	bl Matrix_scale
/* 805D649C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D64A0  83 3B 02 D0 */	lwz r25, 0x2d0(r27)
/* 805D64A4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D64A8  7F 63 DB 78 */	mr r3, r27
/* 805D64AC  90 19 00 00 */	stw r0, 0(r25)
/* 805D64B0  4B E3 6F 25 */	bl _Matrix_to_Mtx_new
/* 805D64B4  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 805D64B8  90 79 00 04 */	stw r3, 4(r25)
/* 805D64BC  38 64 61 38 */	addi r3, r4, debug_mode@l /* 0x81166138@l */
/* 805D64C0  80 63 00 00 */	lwz r3, 0(r3)
/* 805D64C4  A8 03 16 98 */	lha r0, 0x1698(r3)
/* 805D64C8  2C 00 00 00 */	cmpwi r0, 0
/* 805D64CC  41 82 00 44 */	beq lbl_805D6510
/* 805D64D0  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805D64D4  38 03 00 80 */	addi r0, r3, 0x0080 /* 0xFA000080@l */
/* 805D64D8  90 19 00 08 */	stw r0, 8(r25)
/* 805D64DC  88 1A 06 A4 */	lbz r0, 0x6a4(r26)
/* 805D64E0  1C 00 00 03 */	mulli r0, r0, 3
/* 805D64E4  7C 9A 02 14 */	add r4, r26, r0
/* 805D64E8  88 04 06 21 */	lbz r0, 0x621(r4)
/* 805D64EC  88 64 06 20 */	lbz r3, 0x620(r4)
/* 805D64F0  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805D64F4  88 84 06 22 */	lbz r4, 0x622(r4)
/* 805D64F8  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805D64FC  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805D6500  60 00 00 FF */	ori r0, r0, 0xff
/* 805D6504  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D6508  3B 39 00 10 */	addi r25, r25, 0x10
/* 805D650C  48 00 00 20 */	b lbl_805D652C
lbl_805D6510:
/* 805D6510  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 805D6514  3C 60 5A 5A */	lis r3, 0x5A5A /* 0x5A5A5AFF@ha */
/* 805D6518  38 04 00 80 */	addi r0, r4, 0x0080 /* 0xFA000080@l */
/* 805D651C  90 19 00 08 */	stw r0, 8(r25)
/* 805D6520  38 03 5A FF */	addi r0, r3, 0x5AFF /* 0x5A5A5AFF@l */
/* 805D6524  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D6528  3B 39 00 10 */	addi r25, r25, 0x10
lbl_805D652C:
/* 805D652C  7F 23 CB 78 */	mr r3, r25
/* 805D6530  3C 00 DE 00 */	lis r0, 0xde00
/* 805D6534  90 19 00 00 */	stw r0, 0(r25)
/* 805D6538  3B 39 00 08 */	addi r25, r25, 8
/* 805D653C  93 C3 00 04 */	stw r30, 4(r3)
/* 805D6540  93 3B 02 D0 */	stw r25, 0x2d0(r27)
/* 805D6544  4B E3 5C D1 */	bl Matrix_pull
/* 805D6548  4B E3 5C 8D */	bl Matrix_push
/* 805D654C  3C 60 80 65 */	lis r3, lit_1909@ha /* 0x8064B180@ha */
/* 805D6550  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D6554  38 A3 B1 80 */	addi r5, r3, lit_1909@l /* 0x8064B180@l */
/* 805D6558  C0 64 B1 6C */	lfs f3, lit_605@l(r4)  /* 0x8064B16C@l */
/* 805D655C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D6560  38 60 00 00 */	li r3, 0
/* 805D6564  FC 40 08 90 */	fmr f2, f1
/* 805D6568  4B E3 5E 85 */	bl Matrix_scale
/* 805D656C  80 7A 06 90 */	lwz r3, 0x690(r26)
/* 805D6570  3C A0 43 30 */	lis r5, 0x4330
/* 805D6574  80 1A 06 84 */	lwz r0, 0x684(r26)
/* 805D6578  3C C0 80 65 */	lis r6, lit_609@ha /* 0x8064B174@ha */
/* 805D657C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805D6580  90 A1 00 40 */	stw r5, 0x40(r1)
/* 805D6584  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6588  C8 46 B1 74 */	lfd f2, lit_609@l(r6)  /* 0x8064B174@l */
/* 805D658C  90 81 00 44 */	stw r4, 0x44(r1)
/* 805D6590  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6594  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6598  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D659C  38 60 00 01 */	li r3, 1
/* 805D65A0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D65A4  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D65A8  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D65AC  90 A1 00 38 */	stw r5, 0x38(r1)
/* 805D65B0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D65B4  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D65B8  4B E3 5D 49 */	bl Matrix_translate
/* 805D65BC  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 805D65C0  3C 00 43 30 */	lis r0, 0x4330
/* 805D65C4  90 61 00 34 */	stw r3, 0x34(r1)
/* 805D65C8  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D65CC  3C A0 80 65 */	lis r5, lit_2250@ha /* 0x8064B1A0@ha */
/* 805D65D0  C8 44 B1 74 */	lfd f2, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D65D4  90 01 00 30 */	stw r0, 0x30(r1)
/* 805D65D8  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064B16C@ha */
/* 805D65DC  38 83 B1 6C */	addi r4, r3, lit_605@l /* 0x8064B16C@l */
/* 805D65E0  C0 25 B1 A0 */	lfs f1, lit_2250@l(r5)  /* 0x8064B1A0@l */
/* 805D65E4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805D65E8  38 60 00 01 */	li r3, 1
/* 805D65EC  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D65F0  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D65F4  4B E3 5D F9 */	bl Matrix_scale
/* 805D65F8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D65FC  83 3B 02 D0 */	lwz r25, 0x2d0(r27)
/* 805D6600  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D6604  7F 63 DB 78 */	mr r3, r27
/* 805D6608  90 19 00 00 */	stw r0, 0(r25)
/* 805D660C  4B E3 6D C9 */	bl _Matrix_to_Mtx_new
/* 805D6610  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 805D6614  90 79 00 04 */	stw r3, 4(r25)
/* 805D6618  38 64 61 38 */	addi r3, r4, debug_mode@l /* 0x81166138@l */
/* 805D661C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6620  A8 03 16 98 */	lha r0, 0x1698(r3)
/* 805D6624  2C 00 00 00 */	cmpwi r0, 0
/* 805D6628  41 82 00 44 */	beq lbl_805D666C
/* 805D662C  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805D6630  38 03 00 80 */	addi r0, r3, 0x0080 /* 0xFA000080@l */
/* 805D6634  90 19 00 08 */	stw r0, 8(r25)
/* 805D6638  88 1A 06 A4 */	lbz r0, 0x6a4(r26)
/* 805D663C  1C 00 00 03 */	mulli r0, r0, 3
/* 805D6640  7C 9A 02 14 */	add r4, r26, r0
/* 805D6644  88 04 06 21 */	lbz r0, 0x621(r4)
/* 805D6648  88 64 06 20 */	lbz r3, 0x620(r4)
/* 805D664C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805D6650  88 84 06 22 */	lbz r4, 0x622(r4)
/* 805D6654  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805D6658  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805D665C  60 00 00 FF */	ori r0, r0, 0xff
/* 805D6660  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D6664  3B 39 00 10 */	addi r25, r25, 0x10
/* 805D6668  48 00 00 20 */	b lbl_805D6688
lbl_805D666C:
/* 805D666C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 805D6670  3C 60 5A 5A */	lis r3, 0x5A5A /* 0x5A5A5AFF@ha */
/* 805D6674  38 04 00 80 */	addi r0, r4, 0x0080 /* 0xFA000080@l */
/* 805D6678  90 19 00 08 */	stw r0, 8(r25)
/* 805D667C  38 03 5A FF */	addi r0, r3, 0x5AFF /* 0x5A5A5AFF@l */
/* 805D6680  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D6684  3B 39 00 10 */	addi r25, r25, 0x10
lbl_805D6688:
/* 805D6688  7F 23 CB 78 */	mr r3, r25
/* 805D668C  3C 00 DE 00 */	lis r0, 0xde00
/* 805D6690  90 19 00 00 */	stw r0, 0(r25)
/* 805D6694  3B 39 00 08 */	addi r25, r25, 8
/* 805D6698  93 C3 00 04 */	stw r30, 4(r3)
/* 805D669C  93 3B 02 D0 */	stw r25, 0x2d0(r27)
/* 805D66A0  4B E3 5B 75 */	bl Matrix_pull
lbl_805D66A4:
/* 805D66A4  3C 60 80 65 */	lis r3, lit_1909@ha /* 0x8064B180@ha */
/* 805D66A8  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D66AC  38 A3 B1 80 */	addi r5, r3, lit_1909@l /* 0x8064B180@l */
/* 805D66B0  C0 64 B1 6C */	lfs f3, lit_605@l(r4)  /* 0x8064B16C@l */
/* 805D66B4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D66B8  38 60 00 00 */	li r3, 0
/* 805D66BC  FC 40 08 90 */	fmr f2, f1
/* 805D66C0  4B E3 5D 2D */	bl Matrix_scale
/* 805D66C4  3C 60 80 65 */	lis r3, lit_1910@ha /* 0x8064B184@ha */
/* 805D66C8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 805D66CC  C0 63 B1 84 */	lfs f3, lit_1910@l(r3)  /* 0x8064B184@l */
/* 805D66D0  38 60 00 01 */	li r3, 1
/* 805D66D4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 805D66D8  4B E3 5C 29 */	bl Matrix_translate
/* 805D66DC  83 3B 02 D0 */	lwz r25, 0x2d0(r27)
/* 805D66E0  3C 00 DE 00 */	lis r0, 0xde00
/* 805D66E4  3C 60 80 A5 */	lis r3, des_win_before@ha /* 0x80A52880@ha */
/* 805D66E8  90 19 00 00 */	stw r0, 0(r25)
/* 805D66EC  38 03 28 80 */	addi r0, r3, des_win_before@l /* 0x80A52880@l */
/* 805D66F0  90 19 00 04 */	stw r0, 4(r25)
/* 805D66F4  3B 39 00 08 */	addi r25, r25, 8
/* 805D66F8  88 7A 06 9A */	lbz r3, 0x69a(r26)
/* 805D66FC  28 03 00 00 */	cmplwi r3, 0
/* 805D6700  41 82 01 28 */	beq lbl_805D6828
/* 805D6704  88 1A 06 99 */	lbz r0, 0x699(r26)
/* 805D6708  28 00 00 09 */	cmplwi r0, 9
/* 805D670C  41 82 01 1C */	beq lbl_805D6828
/* 805D6710  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6714  38 00 00 00 */	li r0, 0
/* 805D6718  C0 03 B1 8C */	lfs f0, lit_1949@l(r3)  /* 0x8064B18C@l */
/* 805D671C  7F 43 D3 78 */	mr r3, r26
/* 805D6720  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805D6724  38 A1 00 18 */	addi r5, r1, 0x18
/* 805D6728  38 C1 00 14 */	addi r6, r1, 0x14
/* 805D672C  38 E1 00 0A */	addi r7, r1, 0xa
/* 805D6730  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805D6734  38 80 00 01 */	li r4, 1
/* 805D6738  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805D673C  4B FF F8 25 */	bl mDE_set_cursor_waku_rotate
/* 805D6740  4B E3 5A 95 */	bl Matrix_push
/* 805D6744  80 7A 06 58 */	lwz r3, 0x658(r26)
/* 805D6748  3C E0 43 30 */	lis r7, 0x4330
/* 805D674C  80 1A 06 5C */	lwz r0, 0x65c(r26)
/* 805D6750  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6754  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6758  3C 80 80 65 */	lis r4, lit_2251@ha /* 0x8064B1A4@ha */
/* 805D675C  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6760  38 C4 B1 A4 */	addi r6, r4, lit_2251@l /* 0x8064B1A4@l */
/* 805D6764  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6768  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D676C  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6770  3C 60 80 65 */	lis r3, lit_2250@ha /* 0x8064B1A0@ha */
/* 805D6774  38 A3 B1 A0 */	addi r5, r3, lit_2250@l /* 0x8064B1A0@l */
/* 805D6778  C0 46 00 00 */	lfs f2, 0(r6)
/* 805D677C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6780  3C 80 80 65 */	lis r4, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6784  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6788  38 C4 B1 A8 */	addi r6, r4, lit_2252@l /* 0x8064B1A8@l */
/* 805D678C  EC 60 28 28 */	fsubs f3, f0, f5
/* 805D6790  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6794  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6798  38 83 B1 AC */	addi r4, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D679C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D67A0  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D67A4  EC 83 10 28 */	fsubs f4, f3, f2
/* 805D67A8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D67AC  C0 44 00 00 */	lfs f2, 0(r4)
/* 805D67B0  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D67B4  EC 00 28 28 */	fsubs f0, f0, f5
/* 805D67B8  C0 66 00 00 */	lfs f3, 0(r6)
/* 805D67BC  EC A4 18 28 */	fsubs f5, f4, f3
/* 805D67C0  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 805D67C4  EC 61 00 2A */	fadds f3, f1, f0
/* 805D67C8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805D67CC  38 60 00 01 */	li r3, 1
/* 805D67D0  EC 25 20 28 */	fsubs f1, f5, f4
/* 805D67D4  EC 43 10 28 */	fsubs f2, f3, f2
/* 805D67D8  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D67DC  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D67E0  4B E3 5B 21 */	bl Matrix_translate
/* 805D67E4  A8 61 00 0A */	lha r3, 0xa(r1)
/* 805D67E8  38 80 00 01 */	li r4, 1
/* 805D67EC  4B E3 60 05 */	bl Matrix_RotateZ
/* 805D67F0  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D67F4  7F 63 DB 78 */	mr r3, r27
/* 805D67F8  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D67FC  90 19 00 00 */	stw r0, 0(r25)
/* 805D6800  4B E3 6B D5 */	bl _Matrix_to_Mtx_new
/* 805D6804  90 79 00 04 */	stw r3, 4(r25)
/* 805D6808  3C 00 DE 00 */	lis r0, 0xde00
/* 805D680C  3C 60 80 A4 */	lis r3, des_cursor_waku1T_model@ha /* 0x80A46528@ha */
/* 805D6810  90 19 00 08 */	stw r0, 8(r25)
/* 805D6814  38 03 65 28 */	addi r0, r3, des_cursor_waku1T_model@l /* 0x80A46528@l */
/* 805D6818  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D681C  3B 39 00 10 */	addi r25, r25, 0x10
/* 805D6820  4B E3 59 F5 */	bl Matrix_pull
/* 805D6824  48 00 00 E0 */	b lbl_805D6904
lbl_805D6828:
/* 805D6828  28 03 00 00 */	cmplwi r3, 0
/* 805D682C  41 82 00 D8 */	beq lbl_805D6904
/* 805D6830  88 1A 06 99 */	lbz r0, 0x699(r26)
/* 805D6834  28 00 00 09 */	cmplwi r0, 9
/* 805D6838  40 82 00 CC */	bne lbl_805D6904
/* 805D683C  4B E3 59 99 */	bl Matrix_push
/* 805D6840  80 7A 06 58 */	lwz r3, 0x658(r26)
/* 805D6844  3C E0 43 30 */	lis r7, 0x4330
/* 805D6848  80 1A 06 5C */	lwz r0, 0x65c(r26)
/* 805D684C  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6850  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6854  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6858  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D685C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6860  3C 80 80 65 */	lis r4, lit_2251@ha /* 0x8064B1A4@ha */
/* 805D6864  3C 60 80 65 */	lis r3, lit_602@ha /* 0x8064B160@ha */
/* 805D6868  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D686C  38 C4 B1 A4 */	addi r6, r4, lit_2251@l /* 0x8064B1A4@l */
/* 805D6870  38 83 B1 60 */	addi r4, r3, lit_602@l /* 0x8064B160@l */
/* 805D6874  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6878  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D687C  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6880  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6884  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6888  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D688C  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6890  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6894  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6898  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D689C  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D68A0  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D68A4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D68A8  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D68AC  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D68B0  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D68B4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D68B8  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D68BC  38 60 00 01 */	li r3, 1
/* 805D68C0  EC 43 10 2A */	fadds f2, f3, f2
/* 805D68C4  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D68C8  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D68CC  4B E3 5A 35 */	bl Matrix_translate
/* 805D68D0  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D68D4  7F 63 DB 78 */	mr r3, r27
/* 805D68D8  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D68DC  90 19 00 00 */	stw r0, 0(r25)
/* 805D68E0  4B E3 6A F5 */	bl _Matrix_to_Mtx_new
/* 805D68E4  90 79 00 04 */	stw r3, 4(r25)
/* 805D68E8  3C 00 DE 00 */	lis r0, 0xde00
/* 805D68EC  3C 60 80 A4 */	lis r3, des_cursor_wakuT_model@ha /* 0x80A46618@ha */
/* 805D68F0  90 19 00 08 */	stw r0, 8(r25)
/* 805D68F4  38 03 66 18 */	addi r0, r3, des_cursor_wakuT_model@l /* 0x80A46618@l */
/* 805D68F8  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D68FC  3B 39 00 10 */	addi r25, r25, 0x10
/* 805D6900  4B E3 59 15 */	bl Matrix_pull
lbl_805D6904:
/* 805D6904  88 1A 06 99 */	lbz r0, 0x699(r26)
/* 805D6908  28 00 00 01 */	cmplwi r0, 1
/* 805D690C  40 82 00 98 */	bne lbl_805D69A4
/* 805D6910  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D6914  3C C0 43 30 */	lis r6, 0x4330 /* 0x43300000@ha */
/* 805D6918  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D691C  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D6920  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6924  3C A0 80 65 */	lis r5, lit_605@ha /* 0x8064B16C@ha */
/* 805D6928  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D692C  38 E5 B1 6C */	addi r7, r5, lit_605@l /* 0x8064B16C@l */
/* 805D6930  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6934  C8 44 B1 74 */	lfd f2, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D6938  90 C1 00 40 */	stw r6, 0x40(r1)
/* 805D693C  3C 60 80 65 */	lis r3, lit_2254@ha /* 0x8064B1B0@ha */
/* 805D6940  38 83 B1 B0 */	addi r4, r3, lit_2254@l /* 0x8064B1B0@l */
/* 805D6944  C0 87 00 00 */	lfs f4, 0(r7)
/* 805D6948  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D694C  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6950  90 C1 00 38 */	stw r6, 0x38(r1)
/* 805D6954  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6958  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D695C  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6960  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6964  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6968  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D696C  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6970  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6974  EC 84 08 2A */	fadds f4, f4, f1
/* 805D6978  C0 26 00 00 */	lfs f1, 0x0000(r6)  /* 0x43300000@l */
/* 805D697C  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6980  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D6984  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6988  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D698C  38 60 00 01 */	li r3, 1
/* 805D6990  EC 43 10 2A */	fadds f2, f3, f2
/* 805D6994  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6998  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D699C  4B E3 59 65 */	bl Matrix_translate
/* 805D69A0  48 00 08 B8 */	b lbl_805D7258
lbl_805D69A4:
/* 805D69A4  28 00 00 02 */	cmplwi r0, 2
/* 805D69A8  40 82 01 84 */	bne lbl_805D6B2C
/* 805D69AC  88 1A 06 9A */	lbz r0, 0x69a(r26)
/* 805D69B0  28 00 00 00 */	cmplwi r0, 0
/* 805D69B4  41 82 00 E4 */	beq lbl_805D6A98
/* 805D69B8  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D69BC  38 00 00 00 */	li r0, 0
/* 805D69C0  C0 03 B1 8C */	lfs f0, lit_1949@l(r3)  /* 0x8064B18C@l */
/* 805D69C4  7F 43 D3 78 */	mr r3, r26
/* 805D69C8  B0 01 00 08 */	sth r0, 8(r1)
/* 805D69CC  38 A1 00 10 */	addi r5, r1, 0x10
/* 805D69D0  38 C1 00 0C */	addi r6, r1, 0xc
/* 805D69D4  38 E1 00 08 */	addi r7, r1, 8
/* 805D69D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805D69DC  38 80 00 00 */	li r4, 0
/* 805D69E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D69E4  4B FF F5 7D */	bl mDE_set_cursor_waku_rotate
/* 805D69E8  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D69EC  3C E0 43 30 */	lis r7, 0x4330
/* 805D69F0  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D69F4  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D69F8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D69FC  3C 80 80 65 */	lis r4, lit_2255@ha /* 0x8064B1B4@ha */
/* 805D6A00  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6A04  38 C4 B1 B4 */	addi r6, r4, lit_2255@l /* 0x8064B1B4@l */
/* 805D6A08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6A0C  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6A10  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6A14  3C 60 80 65 */	lis r3, lit_2251@ha /* 0x8064B1A4@ha */
/* 805D6A18  38 A3 B1 A4 */	addi r5, r3, lit_2251@l /* 0x8064B1A4@l */
/* 805D6A1C  C0 46 00 00 */	lfs f2, 0(r6)
/* 805D6A20  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6A24  3C 80 80 65 */	lis r4, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6A28  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6A2C  38 C4 B1 A8 */	addi r6, r4, lit_2252@l /* 0x8064B1A8@l */
/* 805D6A30  EC 60 28 28 */	fsubs f3, f0, f5
/* 805D6A34  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6A38  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6A3C  38 83 B1 AC */	addi r4, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6A40  C0 25 00 00 */	lfs f1, 0(r5)
/* 805D6A44  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6A48  EC 83 10 28 */	fsubs f4, f3, f2
/* 805D6A4C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6A50  C0 44 00 00 */	lfs f2, 0(r4)
/* 805D6A54  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6A58  EC 00 28 28 */	fsubs f0, f0, f5
/* 805D6A5C  C0 66 00 00 */	lfs f3, 0(r6)
/* 805D6A60  EC A4 18 28 */	fsubs f5, f4, f3
/* 805D6A64  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 805D6A68  EC 61 00 2A */	fadds f3, f1, f0
/* 805D6A6C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805D6A70  38 60 00 01 */	li r3, 1
/* 805D6A74  EC 25 20 28 */	fsubs f1, f5, f4
/* 805D6A78  EC 43 10 28 */	fsubs f2, f3, f2
/* 805D6A7C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6A80  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D6A84  4B E3 58 7D */	bl Matrix_translate
/* 805D6A88  A8 61 00 08 */	lha r3, 8(r1)
/* 805D6A8C  38 80 00 01 */	li r4, 1
/* 805D6A90  4B E3 5D 61 */	bl Matrix_RotateZ
/* 805D6A94  48 00 07 C4 */	b lbl_805D7258
lbl_805D6A98:
/* 805D6A98  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D6A9C  3C E0 43 30 */	lis r7, 0x4330
/* 805D6AA0  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6AA4  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6AA8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6AAC  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6AB0  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6AB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6AB8  3C 80 80 65 */	lis r4, lit_2251@ha /* 0x8064B1A4@ha */
/* 805D6ABC  3C 60 80 65 */	lis r3, lit_2250@ha /* 0x8064B1A0@ha */
/* 805D6AC0  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6AC4  38 C4 B1 A4 */	addi r6, r4, lit_2251@l /* 0x8064B1A4@l */
/* 805D6AC8  38 83 B1 A0 */	addi r4, r3, lit_2250@l /* 0x8064B1A0@l */
/* 805D6ACC  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6AD0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6AD4  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6AD8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6ADC  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6AE0  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6AE4  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6AE8  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6AEC  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6AF0  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6AF4  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6AF8  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D6AFC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6B00  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6B04  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6B08  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6B0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6B10  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D6B14  38 60 00 01 */	li r3, 1
/* 805D6B18  EC 43 10 2A */	fadds f2, f3, f2
/* 805D6B1C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6B20  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D6B24  4B E3 57 DD */	bl Matrix_translate
/* 805D6B28  48 00 07 30 */	b lbl_805D7258
lbl_805D6B2C:
/* 805D6B2C  28 00 00 03 */	cmplwi r0, 3
/* 805D6B30  40 82 00 98 */	bne lbl_805D6BC8
/* 805D6B34  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D6B38  3C E0 43 30 */	lis r7, 0x4330
/* 805D6B3C  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6B40  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6B44  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6B48  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6B4C  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6B50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6B54  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D6B58  3C 60 80 65 */	lis r3, lit_2256@ha /* 0x8064B1B8@ha */
/* 805D6B5C  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6B60  38 C4 B1 6C */	addi r6, r4, lit_605@l /* 0x8064B16C@l */
/* 805D6B64  38 83 B1 B8 */	addi r4, r3, lit_2256@l /* 0x8064B1B8@l */
/* 805D6B68  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6B6C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6B70  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6B74  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6B78  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6B7C  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6B80  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6B84  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6B88  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6B8C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6B90  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6B94  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D6B98  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6B9C  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6BA0  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6BA4  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6BA8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6BAC  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D6BB0  38 60 00 01 */	li r3, 1
/* 805D6BB4  EC 43 10 2A */	fadds f2, f3, f2
/* 805D6BB8  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6BBC  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D6BC0  4B E3 57 41 */	bl Matrix_translate
/* 805D6BC4  48 00 06 94 */	b lbl_805D7258
lbl_805D6BC8:
/* 805D6BC8  28 00 00 04 */	cmplwi r0, 4
/* 805D6BCC  40 82 00 98 */	bne lbl_805D6C64
/* 805D6BD0  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D6BD4  3C E0 43 30 */	lis r7, 0x4330
/* 805D6BD8  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6BDC  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6BE0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6BE4  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6BE8  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6BEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6BF0  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D6BF4  3C 60 80 65 */	lis r3, lit_2256@ha /* 0x8064B1B8@ha */
/* 805D6BF8  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6BFC  38 C4 B1 6C */	addi r6, r4, lit_605@l /* 0x8064B16C@l */
/* 805D6C00  38 83 B1 B8 */	addi r4, r3, lit_2256@l /* 0x8064B1B8@l */
/* 805D6C04  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6C08  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6C0C  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6C10  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6C14  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6C18  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6C1C  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6C20  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6C24  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6C28  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6C2C  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6C30  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D6C34  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6C38  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6C3C  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6C40  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6C44  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6C48  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D6C4C  38 60 00 01 */	li r3, 1
/* 805D6C50  EC 43 10 2A */	fadds f2, f3, f2
/* 805D6C54  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6C58  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D6C5C  4B E3 56 A5 */	bl Matrix_translate
/* 805D6C60  48 00 05 F8 */	b lbl_805D7258
lbl_805D6C64:
/* 805D6C64  28 00 00 05 */	cmplwi r0, 5
/* 805D6C68  40 82 00 98 */	bne lbl_805D6D00
/* 805D6C6C  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D6C70  3C E0 43 30 */	lis r7, 0x4330
/* 805D6C74  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6C78  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6C7C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6C80  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6C84  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6C88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6C8C  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D6C90  3C 60 80 65 */	lis r3, lit_2256@ha /* 0x8064B1B8@ha */
/* 805D6C94  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6C98  38 C4 B1 6C */	addi r6, r4, lit_605@l /* 0x8064B16C@l */
/* 805D6C9C  38 83 B1 B8 */	addi r4, r3, lit_2256@l /* 0x8064B1B8@l */
/* 805D6CA0  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6CA4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6CA8  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6CAC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6CB0  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6CB4  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6CB8  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6CBC  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6CC0  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6CC4  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6CC8  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6CCC  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D6CD0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6CD4  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6CD8  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6CDC  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6CE0  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6CE4  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D6CE8  38 60 00 01 */	li r3, 1
/* 805D6CEC  EC 43 10 2A */	fadds f2, f3, f2
/* 805D6CF0  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6CF4  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D6CF8  4B E3 56 09 */	bl Matrix_translate
/* 805D6CFC  48 00 05 5C */	b lbl_805D7258
lbl_805D6D00:
/* 805D6D00  28 00 00 06 */	cmplwi r0, 6
/* 805D6D04  40 82 00 98 */	bne lbl_805D6D9C
/* 805D6D08  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D6D0C  3C E0 43 30 */	lis r7, 0x4330
/* 805D6D10  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6D14  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6D18  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6D1C  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6D20  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6D24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6D28  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D6D2C  3C 60 80 65 */	lis r3, lit_2256@ha /* 0x8064B1B8@ha */
/* 805D6D30  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6D34  38 C4 B1 6C */	addi r6, r4, lit_605@l /* 0x8064B16C@l */
/* 805D6D38  38 83 B1 B8 */	addi r4, r3, lit_2256@l /* 0x8064B1B8@l */
/* 805D6D3C  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6D40  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6D44  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6D48  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6D4C  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6D50  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6D54  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6D58  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6D5C  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6D60  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6D64  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6D68  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D6D6C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6D70  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6D74  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6D78  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6D7C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6D80  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D6D84  38 60 00 01 */	li r3, 1
/* 805D6D88  EC 43 10 2A */	fadds f2, f3, f2
/* 805D6D8C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6D90  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D6D94  4B E3 55 6D */	bl Matrix_translate
/* 805D6D98  48 00 04 C0 */	b lbl_805D7258
lbl_805D6D9C:
/* 805D6D9C  28 00 00 07 */	cmplwi r0, 7
/* 805D6DA0  40 82 00 98 */	bne lbl_805D6E38
/* 805D6DA4  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D6DA8  3C E0 43 30 */	lis r7, 0x4330
/* 805D6DAC  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6DB0  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6DB4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6DB8  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6DBC  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6DC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6DC4  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D6DC8  3C 60 80 65 */	lis r3, lit_2256@ha /* 0x8064B1B8@ha */
/* 805D6DCC  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6DD0  38 C4 B1 6C */	addi r6, r4, lit_605@l /* 0x8064B16C@l */
/* 805D6DD4  38 83 B1 B8 */	addi r4, r3, lit_2256@l /* 0x8064B1B8@l */
/* 805D6DD8  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6DDC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6DE0  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6DE4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6DE8  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6DEC  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6DF0  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6DF4  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6DF8  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6DFC  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6E00  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6E04  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D6E08  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6E0C  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6E10  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6E14  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6E18  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6E1C  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D6E20  38 60 00 01 */	li r3, 1
/* 805D6E24  EC 43 10 2A */	fadds f2, f3, f2
/* 805D6E28  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6E2C  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D6E30  4B E3 54 D1 */	bl Matrix_translate
/* 805D6E34  48 00 04 24 */	b lbl_805D7258
lbl_805D6E38:
/* 805D6E38  28 00 00 09 */	cmplwi r0, 9
/* 805D6E3C  40 82 00 98 */	bne lbl_805D6ED4
/* 805D6E40  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D6E44  3C E0 43 30 */	lis r7, 0x4330
/* 805D6E48  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6E4C  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D6E50  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D6E54  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D6E58  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D6E5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6E60  3C 80 80 65 */	lis r4, lit_2251@ha /* 0x8064B1A4@ha */
/* 805D6E64  3C 60 80 65 */	lis r3, lit_602@ha /* 0x8064B160@ha */
/* 805D6E68  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6E6C  38 C4 B1 A4 */	addi r6, r4, lit_2251@l /* 0x8064B1A4@l */
/* 805D6E70  38 83 B1 60 */	addi r4, r3, lit_602@l /* 0x8064B160@l */
/* 805D6E74  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6E78  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D6E7C  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6E80  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6E84  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6E88  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6E8C  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6E90  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6E94  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6E98  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6E9C  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6EA0  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D6EA4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6EA8  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D6EAC  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6EB0  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D6EB4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6EB8  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D6EBC  38 60 00 01 */	li r3, 1
/* 805D6EC0  EC 43 10 2A */	fadds f2, f3, f2
/* 805D6EC4  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6EC8  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D6ECC  4B E3 54 35 */	bl Matrix_translate
/* 805D6ED0  48 00 03 88 */	b lbl_805D7258
lbl_805D6ED4:
/* 805D6ED4  28 00 00 0A */	cmplwi r0, 0xa
/* 805D6ED8  40 82 00 8C */	bne lbl_805D6F64
/* 805D6EDC  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6EE0  3C E0 43 30 */	lis r7, 0x4330
/* 805D6EE4  80 BA 06 50 */	lwz r5, 0x650(r26)
/* 805D6EE8  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D6EEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6EF0  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064B124@ha */
/* 805D6EF4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6EF8  38 C4 B1 74 */	addi r6, r4, lit_609@l /* 0x8064B174@l */
/* 805D6EFC  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 805D6F00  38 83 B1 24 */	addi r4, r3, lit_587@l /* 0x8064B124@l */
/* 805D6F04  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6F08  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6F0C  C8 66 00 00 */	lfd f3, 0(r6)
/* 805D6F10  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6F14  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6F18  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6F1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D6F20  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6F24  EC 00 18 28 */	fsubs f0, f0, f3
/* 805D6F28  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D6F2C  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6F30  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6F34  C0 86 00 00 */	lfs f4, 0(r6)
/* 805D6F38  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6F3C  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 805D6F40  EC 21 00 2A */	fadds f1, f1, f0
/* 805D6F44  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6F48  38 60 00 01 */	li r3, 1
/* 805D6F4C  EC A2 18 28 */	fsubs f5, f2, f3
/* 805D6F50  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6F54  EC 41 00 28 */	fsubs f2, f1, f0
/* 805D6F58  EC 25 20 28 */	fsubs f1, f5, f4
/* 805D6F5C  4B E3 53 A5 */	bl Matrix_translate
/* 805D6F60  48 00 02 F8 */	b lbl_805D7258
lbl_805D6F64:
/* 805D6F64  28 00 00 0B */	cmplwi r0, 0xb
/* 805D6F68  40 82 00 8C */	bne lbl_805D6FF4
/* 805D6F6C  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D6F70  3C E0 43 30 */	lis r7, 0x4330
/* 805D6F74  80 BA 06 50 */	lwz r5, 0x650(r26)
/* 805D6F78  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D6F7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6F80  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064B124@ha */
/* 805D6F84  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D6F88  38 C4 B1 74 */	addi r6, r4, lit_609@l /* 0x8064B174@l */
/* 805D6F8C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 805D6F90  38 83 B1 24 */	addi r4, r3, lit_587@l /* 0x8064B124@l */
/* 805D6F94  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D6F98  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D6F9C  C8 66 00 00 */	lfd f3, 0(r6)
/* 805D6FA0  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D6FA4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D6FA8  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D6FAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D6FB0  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D6FB4  EC 00 18 28 */	fsubs f0, f0, f3
/* 805D6FB8  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D6FBC  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D6FC0  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D6FC4  C0 86 00 00 */	lfs f4, 0(r6)
/* 805D6FC8  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D6FCC  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 805D6FD0  EC 21 00 2A */	fadds f1, f1, f0
/* 805D6FD4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D6FD8  38 60 00 01 */	li r3, 1
/* 805D6FDC  EC A2 18 28 */	fsubs f5, f2, f3
/* 805D6FE0  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D6FE4  EC 41 00 28 */	fsubs f2, f1, f0
/* 805D6FE8  EC 25 20 28 */	fsubs f1, f5, f4
/* 805D6FEC  4B E3 53 15 */	bl Matrix_translate
/* 805D6FF0  48 00 02 68 */	b lbl_805D7258
lbl_805D6FF4:
/* 805D6FF4  28 00 00 0C */	cmplwi r0, 0xc
/* 805D6FF8  40 82 00 98 */	bne lbl_805D7090
/* 805D6FFC  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D7000  3C C0 43 30 */	lis r6, 0x4330 /* 0x43300000@ha */
/* 805D7004  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D7008  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D700C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D7010  3C A0 80 65 */	lis r5, lit_2250@ha /* 0x8064B1A0@ha */
/* 805D7014  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D7018  38 E5 B1 A0 */	addi r7, r5, lit_2250@l /* 0x8064B1A0@l */
/* 805D701C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D7020  C8 44 B1 74 */	lfd f2, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D7024  90 C1 00 40 */	stw r6, 0x40(r1)
/* 805D7028  3C 60 80 65 */	lis r3, lit_2257@ha /* 0x8064B1BC@ha */
/* 805D702C  38 83 B1 BC */	addi r4, r3, lit_2257@l /* 0x8064B1BC@l */
/* 805D7030  C0 87 00 00 */	lfs f4, 0(r7)
/* 805D7034  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D7038  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D703C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 805D7040  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D7044  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D7048  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D704C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D7050  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D7054  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D7058  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D705C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D7060  EC 84 08 2A */	fadds f4, f4, f1
/* 805D7064  C0 26 00 00 */	lfs f1, 0x0000(r6)  /* 0x43300000@l */
/* 805D7068  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D706C  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D7070  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D7074  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D7078  38 60 00 01 */	li r3, 1
/* 805D707C  EC 43 10 2A */	fadds f2, f3, f2
/* 805D7080  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D7084  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D7088  4B E3 52 79 */	bl Matrix_translate
/* 805D708C  48 00 01 CC */	b lbl_805D7258
lbl_805D7090:
/* 805D7090  28 00 00 0D */	cmplwi r0, 0xd
/* 805D7094  40 82 00 98 */	bne lbl_805D712C
/* 805D7098  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D709C  3C E0 43 30 */	lis r7, 0x4330
/* 805D70A0  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D70A4  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D70A8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D70AC  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D70B0  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D70B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D70B8  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D70BC  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064B124@ha */
/* 805D70C0  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D70C4  38 C4 B1 6C */	addi r6, r4, lit_605@l /* 0x8064B16C@l */
/* 805D70C8  38 83 B1 24 */	addi r4, r3, lit_587@l /* 0x8064B124@l */
/* 805D70CC  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D70D0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D70D4  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D70D8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D70DC  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D70E0  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D70E4  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D70E8  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D70EC  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D70F0  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D70F4  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D70F8  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D70FC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D7100  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D7104  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D7108  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D710C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D7110  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D7114  38 60 00 01 */	li r3, 1
/* 805D7118  EC 43 10 2A */	fadds f2, f3, f2
/* 805D711C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D7120  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D7124  4B E3 51 DD */	bl Matrix_translate
/* 805D7128  48 00 01 30 */	b lbl_805D7258
lbl_805D712C:
/* 805D712C  28 00 00 0E */	cmplwi r0, 0xe
/* 805D7130  40 82 00 98 */	bne lbl_805D71C8
/* 805D7134  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D7138  3C E0 43 30 */	lis r7, 0x4330
/* 805D713C  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D7140  3C A0 80 65 */	lis r5, lit_609@ha /* 0x8064B174@ha */
/* 805D7144  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D7148  C8 A5 B1 74 */	lfd f5, lit_609@l(r5)  /* 0x8064B174@l */
/* 805D714C  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D7150  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D7154  3C 80 80 65 */	lis r4, lit_605@ha /* 0x8064B16C@ha */
/* 805D7158  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064B124@ha */
/* 805D715C  90 E1 00 40 */	stw r7, 0x40(r1)
/* 805D7160  38 C4 B1 6C */	addi r6, r4, lit_605@l /* 0x8064B16C@l */
/* 805D7164  38 83 B1 24 */	addi r4, r3, lit_587@l /* 0x8064B124@l */
/* 805D7168  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D716C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D7170  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D7174  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D7178  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D717C  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D7180  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D7184  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805D7188  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D718C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D7190  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D7194  EC 82 08 28 */	fsubs f4, f2, f1
/* 805D7198  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D719C  C0 26 00 00 */	lfs f1, 0(r6)
/* 805D71A0  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D71A4  EC 40 28 28 */	fsubs f2, f0, f5
/* 805D71A8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D71AC  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D71B0  38 60 00 01 */	li r3, 1
/* 805D71B4  EC 43 10 2A */	fadds f2, f3, f2
/* 805D71B8  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D71BC  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D71C0  4B E3 51 41 */	bl Matrix_translate
/* 805D71C4  48 00 00 94 */	b lbl_805D7258
lbl_805D71C8:
/* 805D71C8  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 805D71CC  3C C0 43 30 */	lis r6, 0x4330 /* 0x43300000@ha */
/* 805D71D0  80 1A 06 54 */	lwz r0, 0x654(r26)
/* 805D71D4  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D71D8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D71DC  3C A0 80 65 */	lis r5, lit_2256@ha /* 0x8064B1B8@ha */
/* 805D71E0  90 61 00 44 */	stw r3, 0x44(r1)
/* 805D71E4  38 E5 B1 B8 */	addi r7, r5, lit_2256@l /* 0x8064B1B8@l */
/* 805D71E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D71EC  C8 44 B1 74 */	lfd f2, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D71F0  90 C1 00 40 */	stw r6, 0x40(r1)
/* 805D71F4  3C 60 80 65 */	lis r3, lit_2258@ha /* 0x8064B1C0@ha */
/* 805D71F8  38 83 B1 C0 */	addi r4, r3, lit_2258@l /* 0x8064B1C0@l */
/* 805D71FC  C0 87 00 00 */	lfs f4, 0(r7)
/* 805D7200  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805D7204  3C A0 80 65 */	lis r5, lit_2252@ha /* 0x8064B1A8@ha */
/* 805D7208  90 C1 00 38 */	stw r6, 0x38(r1)
/* 805D720C  3C 60 80 65 */	lis r3, lit_2253@ha /* 0x8064B1AC@ha */
/* 805D7210  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D7214  38 C5 B1 A8 */	addi r6, r5, lit_2252@l /* 0x8064B1A8@l */
/* 805D7218  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D721C  38 A3 B1 AC */	addi r5, r3, lit_2253@l /* 0x8064B1AC@l */
/* 805D7220  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D7224  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D7228  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D722C  EC 84 08 2A */	fadds f4, f4, f1
/* 805D7230  C0 26 00 00 */	lfs f1, 0x0000(r6)  /* 0x43300000@l */
/* 805D7234  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D7238  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D723C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805D7240  EC 24 08 28 */	fsubs f1, f4, f1
/* 805D7244  38 60 00 01 */	li r3, 1
/* 805D7248  EC 43 10 2A */	fadds f2, f3, f2
/* 805D724C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D7250  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D7254  4B E3 50 AD */	bl Matrix_translate
lbl_805D7258:
/* 805D7258  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D725C  7F 63 DB 78 */	mr r3, r27
/* 805D7260  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D7264  90 19 00 00 */	stw r0, 0(r25)
/* 805D7268  4B E3 61 6D */	bl _Matrix_to_Mtx_new
/* 805D726C  90 79 00 04 */	stw r3, 4(r25)
/* 805D7270  88 1A 06 9A */	lbz r0, 0x69a(r26)
/* 805D7274  28 00 00 00 */	cmplwi r0, 0
/* 805D7278  41 82 00 2C */	beq lbl_805D72A4
/* 805D727C  88 1A 06 99 */	lbz r0, 0x699(r26)
/* 805D7280  28 00 00 02 */	cmplwi r0, 2
/* 805D7284  40 82 00 20 */	bne lbl_805D72A4
/* 805D7288  3C 00 DE 00 */	lis r0, 0xde00
/* 805D728C  3C 60 80 A4 */	lis r3, des_cursor_waku2T_model@ha /* 0x80A46578@ha */
/* 805D7290  90 19 00 08 */	stw r0, 8(r25)
/* 805D7294  38 03 65 78 */	addi r0, r3, des_cursor_waku2T_model@l /* 0x80A46578@l */
/* 805D7298  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D729C  3B 39 00 10 */	addi r25, r25, 0x10
/* 805D72A0  48 00 00 28 */	b lbl_805D72C8
lbl_805D72A4:
/* 805D72A4  3C 00 DE 00 */	lis r0, 0xde00
/* 805D72A8  3C 60 80 6D */	lis r3, cursor_table@ha /* 0x806CC76C@ha */
/* 805D72AC  90 19 00 08 */	stw r0, 8(r25)
/* 805D72B0  38 63 C7 6C */	addi r3, r3, cursor_table@l /* 0x806CC76C@l */
/* 805D72B4  88 1A 06 99 */	lbz r0, 0x699(r26)
/* 805D72B8  54 00 10 3A */	slwi r0, r0, 2
/* 805D72BC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805D72C0  90 19 00 0C */	stw r0, 0xc(r25)
/* 805D72C4  3B 39 00 10 */	addi r25, r25, 0x10
lbl_805D72C8:
/* 805D72C8  93 3B 02 D0 */	stw r25, 0x2d0(r27)
lbl_805D72CC:
/* 805D72CC  39 61 00 70 */	addi r11, r1, 0x70
/* 805D72D0  4B AC 3C 41 */	bl func_8009AF10
/* 805D72D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805D72D8  7C 08 03 A6 */	mtlr r0
/* 805D72DC  38 21 00 70 */	addi r1, r1, 0x70
/* 805D72E0  4E 80 00 20 */	blr 
