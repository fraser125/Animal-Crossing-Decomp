lbl_805A6134:
/* 805A6134  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A6138  7C 08 02 A6 */	mflr r0
/* 805A613C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A6140  39 61 00 30 */	addi r11, r1, 0x30
/* 805A6144  4B AF 4D 8D */	bl func_8009AED0
/* 805A6148  3C A0 80 6C */	lis r5, data_806C3FA8@ha /* 0x806C3FA8@ha */
/* 805A614C  7C 7E 1B 78 */	mr r30, r3
/* 805A6150  7C 9C 23 78 */	mr r28, r4
/* 805A6154  3B E5 3F A8 */	addi r31, r5, data_806C3FA8@l /* 0x806C3FA8@l */
/* 805A6158  4B FF F2 91 */	bl aGKK_warp_event
/* 805A615C  2C 03 00 00 */	cmpwi r3, 0
/* 805A6160  40 82 01 F8 */	bne lbl_805A6358
/* 805A6164  83 BE 01 CC */	lwz r29, 0x1cc(r30)
/* 805A6168  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 805A616C  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 805A6170  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 805A6174  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 805A6178  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 805A617C  2C 03 00 00 */	cmpwi r3, 0
/* 805A6180  40 82 00 0C */	bne lbl_805A618C
/* 805A6184  38 00 00 00 */	li r0, 0
/* 805A6188  48 00 00 0C */	b lbl_805A6194
lbl_805A618C:
/* 805A618C  38 03 FF FF */	addi r0, r3, -1
/* 805A6190  90 1E 02 18 */	stw r0, 0x218(r30)
lbl_805A6194:
/* 805A6194  2C 00 00 00 */	cmpwi r0, 0
/* 805A6198  40 82 01 8C */	bne lbl_805A6324
/* 805A619C  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A61A0  38 BF 01 68 */	addi r5, r31, 0x168
/* 805A61A4  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A61A8  38 9D 00 28 */	addi r4, r29, 0x28
/* 805A61AC  54 00 10 3A */	slwi r0, r0, 2
/* 805A61B0  7C 05 04 2E */	lfsx f0, r5, r0
/* 805A61B4  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 805A61B8  4B E1 4F 79 */	bl search_position_angleY
/* 805A61BC  7C 60 1B 78 */	mr r0, r3
/* 805A61C0  7F C3 F3 78 */	mr r3, r30
/* 805A61C4  7C 04 03 78 */	mr r4, r0
/* 805A61C8  4B FF ED 45 */	bl aGKK_set_angle
/* 805A61CC  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A61D0  38 9D 00 28 */	addi r4, r29, 0x28
/* 805A61D4  4B E1 4E 01 */	bl search_position_distance
/* 805A61D8  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A61DC  38 7F 01 B8 */	addi r3, r31, 0x1b8
/* 805A61E0  54 00 10 3A */	slwi r0, r0, 2
/* 805A61E4  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A61E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A61EC  40 80 01 38 */	bge lbl_805A6324
/* 805A61F0  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064A450@ha */
/* 805A61F4  C0 23 A4 50 */	lfs f1, lit_501@l(r3)  /* 0x8064A450@l */
/* 805A61F8  4B FF F1 95 */	bl aGKK_random_check
/* 805A61FC  2C 03 00 01 */	cmpwi r3, 1
/* 805A6200  41 82 00 2C */	beq lbl_805A622C
/* 805A6204  A8 7E 02 3E */	lha r3, 0x23e(r30)
/* 805A6208  2C 03 00 00 */	cmpwi r3, 0
/* 805A620C  40 82 00 0C */	bne lbl_805A6218
/* 805A6210  38 00 00 00 */	li r0, 0
/* 805A6214  48 00 00 10 */	b lbl_805A6224
lbl_805A6218:
/* 805A6218  38 03 FF FF */	addi r0, r3, -1
/* 805A621C  B0 1E 02 3E */	sth r0, 0x23e(r30)
/* 805A6220  7C 00 07 34 */	extsh r0, r0
lbl_805A6224:
/* 805A6224  2C 00 00 00 */	cmpwi r0, 0
/* 805A6228  40 82 00 64 */	bne lbl_805A628C
lbl_805A622C:
/* 805A622C  80 1D 02 8C */	lwz r0, 0x28c(r29)
/* 805A6230  2C 00 00 02 */	cmpwi r0, 2
/* 805A6234  40 82 00 F0 */	bne lbl_805A6324
/* 805A6238  38 00 00 02 */	li r0, 2
/* 805A623C  90 1D 02 88 */	stw r0, 0x288(r29)
/* 805A6240  4B E3 58 D5 */	bl mPlib_Get_space_putin_item
/* 805A6244  2C 03 00 00 */	cmpwi r3, 0
/* 805A6248  41 80 00 34 */	blt lbl_805A627C
/* 805A624C  3C 60 80 65 */	lis r3, lit_682@ha /* 0x8064A478@ha */
/* 805A6250  C0 23 A4 78 */	lfs f1, lit_682@l(r3)  /* 0x8064A478@l */
/* 805A6254  4B FF F1 39 */	bl aGKK_random_check
/* 805A6258  2C 03 00 01 */	cmpwi r3, 1
/* 805A625C  40 82 00 20 */	bne lbl_805A627C
/* 805A6260  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A6264  38 7F 02 EC */	addi r3, r31, 0x2ec
/* 805A6268  54 00 10 3A */	slwi r0, r0, 2
/* 805A626C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A6270  90 1E 01 D8 */	stw r0, 0x1d8(r30)
/* 805A6274  80 1E 01 D8 */	lwz r0, 0x1d8(r30)
/* 805A6278  90 1D 02 90 */	stw r0, 0x290(r29)
lbl_805A627C:
/* 805A627C  7F C3 F3 78 */	mr r3, r30
/* 805A6280  38 80 00 09 */	li r4, 9
/* 805A6284  48 00 08 D5 */	bl aGKK_setupAction
/* 805A6288  48 00 00 9C */	b lbl_805A6324
lbl_805A628C:
/* 805A628C  38 00 00 01 */	li r0, 1
/* 805A6290  98 1D 02 60 */	stb r0, 0x260(r29)
/* 805A6294  4B AB 6A 99 */	bl fqrand2
/* 805A6298  A8 9E 01 DC */	lha r4, 0x1dc(r30)
/* 805A629C  3C 00 43 30 */	lis r0, 0x4330
/* 805A62A0  3C C0 80 65 */	lis r6, lit_794@ha /* 0x8064A490@ha */
/* 805A62A4  3C 60 80 65 */	lis r3, lit_797@ha /* 0x8064A49C@ha */
/* 805A62A8  54 85 08 3C */	slwi r5, r4, 1
/* 805A62AC  38 9F 01 A8 */	addi r4, r31, 0x1a8
/* 805A62B0  7C 84 2A AE */	lhax r4, r4, r5
/* 805A62B4  38 A3 A4 9C */	addi r5, r3, lit_797@l /* 0x8064A49C@l */
/* 805A62B8  C0 06 A4 90 */	lfs f0, lit_794@l(r6)  /* 0x8064A490@l */
/* 805A62BC  3C 60 80 65 */	lis r3, lit_793@ha /* 0x8064A48C@ha */
/* 805A62C0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805A62C4  90 01 00 08 */	stw r0, 8(r1)
/* 805A62C8  EC 60 00 72 */	fmuls f3, f0, f1
/* 805A62CC  C8 45 00 00 */	lfd f2, 0(r5)
/* 805A62D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 805A62D4  C0 03 A4 8C */	lfs f0, lit_793@l(r3)  /* 0x8064A48C@l */
/* 805A62D8  C8 21 00 08 */	lfd f1, 8(r1)
/* 805A62DC  EC 21 10 28 */	fsubs f1, f1, f2
/* 805A62E0  EC 21 18 2A */	fadds f1, f1, f3
/* 805A62E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A62E8  FC 00 00 1E */	fctiwz f0, f0
/* 805A62EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805A62F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A62F4  90 1E 02 18 */	stw r0, 0x218(r30)
/* 805A62F8  4B AB 6A 35 */	bl fqrand2
/* 805A62FC  3C 60 80 65 */	lis r3, lit_795@ha /* 0x8064A494@ha */
/* 805A6300  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A6304  38 83 A4 94 */	addi r4, r3, lit_795@l /* 0x8064A494@l */
/* 805A6308  38 7F 01 88 */	addi r3, r31, 0x188
/* 805A630C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805A6310  54 00 10 3A */	slwi r0, r0, 2
/* 805A6314  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A6318  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A631C  EC 00 08 2A */	fadds f0, f0, f1
/* 805A6320  D0 1E 00 74 */	stfs f0, 0x74(r30)
lbl_805A6324:
/* 805A6324  80 1D 02 38 */	lwz r0, 0x238(r29)
/* 805A6328  2C 00 00 06 */	cmpwi r0, 6
/* 805A632C  40 82 00 2C */	bne lbl_805A6358
/* 805A6330  38 00 00 00 */	li r0, 0
/* 805A6334  7F C3 F3 78 */	mr r3, r30
/* 805A6338  90 1D 02 88 */	stw r0, 0x288(r29)
/* 805A633C  7F 84 E3 78 */	mr r4, r28
/* 805A6340  38 A0 00 00 */	li r5, 0
/* 805A6344  4B FF EC CD */	bl aGKK_effect_sibuki
/* 805A6348  7F C3 F3 78 */	mr r3, r30
/* 805A634C  7F 84 E3 78 */	mr r4, r28
/* 805A6350  38 A0 00 00 */	li r5, 0
/* 805A6354  4B FF EE 09 */	bl aGKK_kage_make_actor
lbl_805A6358:
/* 805A6358  39 61 00 30 */	addi r11, r1, 0x30
/* 805A635C  4B AF 4B C1 */	bl func_8009AF1C
/* 805A6360  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A6364  7C 08 03 A6 */	mtlr r0
/* 805A6368  38 21 00 30 */	addi r1, r1, 0x30
/* 805A636C  4E 80 00 20 */	blr 
