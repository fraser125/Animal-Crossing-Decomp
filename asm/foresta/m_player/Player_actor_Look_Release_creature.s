lbl_804FF2BC:
/* 804FF2BC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804FF2C0  7C 08 02 A6 */	mflr r0
/* 804FF2C4  90 01 00 64 */	stw r0, 0x64(r1)
/* 804FF2C8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804FF2CC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804FF2D0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804FF2D4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804FF2D8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 804FF2DC  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 804FF2E0  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 804FF2E4  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 804FF2E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804FF2EC  4B B9 BB E5 */	bl func_8009AED0
/* 804FF2F0  7C 7D 1B 78 */	mr r29, r3
/* 804FF2F4  3B C0 00 01 */	li r30, 1
/* 804FF2F8  83 E3 0D 18 */	lwz r31, 0xd18(r3)
/* 804FF2FC  2C 1F 00 01 */	cmpwi r31, 1
/* 804FF300  40 82 00 38 */	bne lbl_804FF338
/* 804FF304  80 1D 0D 28 */	lwz r0, 0xd28(r29)
/* 804FF308  2C 00 00 00 */	cmpwi r0, 0
/* 804FF30C  40 82 00 24 */	bne lbl_804FF330
/* 804FF310  80 7D 0F 30 */	lwz r3, 0xf30(r29)
/* 804FF314  28 03 00 00 */	cmplwi r3, 0
/* 804FF318  41 82 00 10 */	beq lbl_804FF328
/* 804FF31C  80 C3 01 74 */	lwz r6, 0x174(r3)
/* 804FF320  90 DD 0D 20 */	stw r6, 0xd20(r29)
/* 804FF324  48 00 00 18 */	b lbl_804FF33C
lbl_804FF328:
/* 804FF328  80 DD 0D 20 */	lwz r6, 0xd20(r29)
/* 804FF32C  48 00 00 10 */	b lbl_804FF33C
lbl_804FF330:
/* 804FF330  80 DD 0D 20 */	lwz r6, 0xd20(r29)
/* 804FF334  48 00 00 08 */	b lbl_804FF33C
lbl_804FF338:
/* 804FF338  80 DD 0D 20 */	lwz r6, 0xd20(r29)
lbl_804FF33C:
/* 804FF33C  28 06 00 00 */	cmplwi r6, 0
/* 804FF340  40 82 00 1C */	bne lbl_804FF35C
/* 804FF344  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804FF348  7F A3 EB 78 */	mr r3, r29
/* 804FF34C  38 84 F0 5C */	addi r4, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804FF350  4B FF FB C5 */	bl Player_actor_add_calc_head_angle
/* 804FF354  38 60 00 01 */	li r3, 1
/* 804FF358  48 00 02 60 */	b lbl_804FF5B8
lbl_804FF35C:
/* 804FF35C  2C 1F 00 00 */	cmpwi r31, 0
/* 804FF360  40 82 00 18 */	bne lbl_804FF378
/* 804FF364  88 06 02 1E */	lbz r0, 0x21e(r6)
/* 804FF368  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 804FF36C  7C 00 00 34 */	cntlzw r0, r0
/* 804FF370  54 00 D9 7E */	srwi r0, r0, 5
/* 804FF374  48 00 00 68 */	b lbl_804FF3DC
lbl_804FF378:
/* 804FF378  2C 1F 00 01 */	cmpwi r31, 1
/* 804FF37C  40 82 00 14 */	bne lbl_804FF390
/* 804FF380  88 66 01 B4 */	lbz r3, 0x1b4(r6)
/* 804FF384  30 03 FF FF */	addic r0, r3, -1
/* 804FF388  7C 00 19 10 */	subfe r0, r0, r3
/* 804FF38C  48 00 00 50 */	b lbl_804FF3DC
lbl_804FF390:
/* 804FF390  2C 1F 00 02 */	cmpwi r31, 2
/* 804FF394  40 82 00 30 */	bne lbl_804FF3C4
/* 804FF398  80 06 04 48 */	lwz r0, 0x448(r6)
/* 804FF39C  80 66 04 50 */	lwz r3, 0x450(r6)
/* 804FF3A0  2C 00 00 01 */	cmpwi r0, 1
/* 804FF3A4  41 82 00 0C */	beq lbl_804FF3B0
/* 804FF3A8  2C 03 00 00 */	cmpwi r3, 0
/* 804FF3AC  41 80 00 10 */	blt lbl_804FF3BC
lbl_804FF3B0:
/* 804FF3B0  38 00 00 01 */	li r0, 1
/* 804FF3B4  3B C0 00 00 */	li r30, 0
/* 804FF3B8  48 00 00 24 */	b lbl_804FF3DC
lbl_804FF3BC:
/* 804FF3BC  38 00 00 00 */	li r0, 0
/* 804FF3C0  48 00 00 1C */	b lbl_804FF3DC
lbl_804FF3C4:
/* 804FF3C4  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804FF3C8  7F A3 EB 78 */	mr r3, r29
/* 804FF3CC  38 84 F0 5C */	addi r4, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804FF3D0  4B FF FB 45 */	bl Player_actor_add_calc_head_angle
/* 804FF3D4  38 60 00 01 */	li r3, 1
/* 804FF3D8  48 00 01 E0 */	b lbl_804FF5B8
lbl_804FF3DC:
/* 804FF3DC  2C 00 00 00 */	cmpwi r0, 0
/* 804FF3E0  40 82 00 24 */	bne lbl_804FF404
/* 804FF3E4  38 00 00 00 */	li r0, 0
/* 804FF3E8  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804FF3EC  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804FF3F0  38 83 F0 5C */	addi r4, r3, ZeroSVec@l /* 0x8065F05C@l */
/* 804FF3F4  7F A3 EB 78 */	mr r3, r29
/* 804FF3F8  4B FF FB 1D */	bl Player_actor_add_calc_head_angle
/* 804FF3FC  7F C3 F3 78 */	mr r3, r30
/* 804FF400  48 00 01 B8 */	b lbl_804FF5B8
lbl_804FF404:
/* 804FF404  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804FF408  3C 60 80 64 */	lis r3, lit_2592@ha /* 0x80646C48@ha */
/* 804FF40C  38 A4 F0 5C */	addi r5, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804FF410  C0 03 6C 48 */	lfs f0, lit_2592@l(r3)  /* 0x80646C48@l */
/* 804FF414  80 85 00 00 */	lwz r4, 0(r5)
/* 804FF418  A0 05 00 04 */	lhz r0, 4(r5)
/* 804FF41C  90 81 00 08 */	stw r4, 8(r1)
/* 804FF420  B0 01 00 0C */	sth r0, 0xc(r1)
/* 804FF424  C0 3D 0D 24 */	lfs f1, 0xd24(r29)
/* 804FF428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FF42C  40 80 01 7C */	bge lbl_804FF5A8
/* 804FF430  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 804FF434  2C 1F 00 02 */	cmpwi r31, 2
/* 804FF438  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 804FF43C  C0 66 00 2C */	lfs f3, 0x2c(r6)
/* 804FF440  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 804FF444  EF E1 00 28 */	fsubs f31, f1, f0
/* 804FF448  C0 26 00 30 */	lfs f1, 0x30(r6)
/* 804FF44C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 804FF450  EF C3 10 28 */	fsubs f30, f3, f2
/* 804FF454  EF A1 00 28 */	fsubs f29, f1, f0
/* 804FF458  40 82 00 10 */	bne lbl_804FF468
/* 804FF45C  3C 60 80 64 */	lis r3, lit_5205@ha /* 0x80647CE0@ha */
/* 804FF460  C0 03 7C E0 */	lfs f0, lit_5205@l(r3)  /* 0x80647CE0@l */
/* 804FF464  EF DE 00 2A */	fadds f30, f30, f0
lbl_804FF468:
/* 804FF468  FC 20 F8 90 */	fmr f1, f31
/* 804FF46C  FC 40 E8 90 */	fmr f2, f29
/* 804FF470  4B F0 98 39 */	bl Math3DVecLength2D
/* 804FF474  3C 60 80 64 */	lis r3, lit_1077@ha /* 0x80646A1C@ha */
/* 804FF478  FF 80 08 90 */	fmr f28, f1
/* 804FF47C  C0 03 6A 1C */	lfs f0, lit_1077@l(r3)  /* 0x80646A1C@l */
/* 804FF480  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 804FF484  4C 41 13 82 */	cror 2, 1, 2
/* 804FF488  40 82 00 0C */	bne lbl_804FF494
/* 804FF48C  2C 1F 00 02 */	cmpwi r31, 2
/* 804FF490  40 82 00 20 */	bne lbl_804FF4B0
lbl_804FF494:
/* 804FF494  3C 60 80 64 */	lis r3, lit_1375@ha /* 0x80646A30@ha */
/* 804FF498  C0 03 6A 30 */	lfs f0, lit_1375@l(r3)  /* 0x80646A30@l */
/* 804FF49C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 804FF4A0  4C 41 13 82 */	cror 2, 1, 2
/* 804FF4A4  40 82 01 04 */	bne lbl_804FF5A8
/* 804FF4A8  2C 1F 00 02 */	cmpwi r31, 2
/* 804FF4AC  40 82 00 FC */	bne lbl_804FF5A8
lbl_804FF4B0:
/* 804FF4B0  FC 20 E8 90 */	fmr f1, f29
/* 804FF4B4  FC 40 F8 90 */	fmr f2, f31
/* 804FF4B8  4B F0 CB 49 */	bl atans_table
/* 804FF4BC  FC 20 E0 90 */	fmr f1, f28
/* 804FF4C0  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 804FF4C4  7C 7F 07 34 */	extsh r31, r3
/* 804FF4C8  FC 40 F0 90 */	fmr f2, f30
/* 804FF4CC  7F 80 F8 50 */	subf r28, r0, r31
/* 804FF4D0  4B F0 CB 31 */	bl atans_table
/* 804FF4D4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 804FF4D8  A8 BD 00 DC */	lha r5, 0xdc(r29)
/* 804FF4DC  38 04 80 00 */	addi r0, r4, 0x8000 /* 0x00008000@l */
/* 804FF4E0  7C 64 07 34 */	extsh r4, r3
/* 804FF4E4  7C 1C 00 00 */	cmpw r28, r0
/* 804FF4E8  7C A5 20 50 */	subf r5, r5, r4
/* 804FF4EC  40 81 00 0C */	ble lbl_804FF4F8
/* 804FF4F0  3F 9C FF FF */	addis r28, r28, 0xffff
/* 804FF4F4  48 00 00 10 */	b lbl_804FF504
lbl_804FF4F8:
/* 804FF4F8  2C 1C 80 00 */	cmpwi r28, -32768
/* 804FF4FC  40 80 00 08 */	bge lbl_804FF504
/* 804FF500  3F 9C 00 01 */	addis r28, r28, 1
lbl_804FF504:
/* 804FF504  7F 83 FE 70 */	srawi r3, r28, 0x1f
/* 804FF508  7C 60 E2 78 */	xor r0, r3, r28
/* 804FF50C  7C 03 00 50 */	subf r0, r3, r0
/* 804FF510  2C 00 2A AA */	cmpwi r0, 0x2aaa
/* 804FF514  40 80 00 14 */	bge lbl_804FF528
/* 804FF518  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 804FF51C  7C 00 F8 50 */	subf r0, r0, r31
/* 804FF520  B0 01 00 08 */	sth r0, 8(r1)
/* 804FF524  48 00 00 20 */	b lbl_804FF544
lbl_804FF528:
/* 804FF528  2C 1C 00 00 */	cmpwi r28, 0
/* 804FF52C  40 81 00 10 */	ble lbl_804FF53C
/* 804FF530  38 00 2A AA */	li r0, 0x2aaa
/* 804FF534  B0 01 00 08 */	sth r0, 8(r1)
/* 804FF538  48 00 00 0C */	b lbl_804FF544
lbl_804FF53C:
/* 804FF53C  38 00 D5 56 */	li r0, -10922
/* 804FF540  B0 01 00 08 */	sth r0, 8(r1)
lbl_804FF544:
/* 804FF544  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804FF548  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 804FF54C  7C 05 00 00 */	cmpw r5, r0
/* 804FF550  40 81 00 0C */	ble lbl_804FF55C
/* 804FF554  3C A5 FF FF */	addis r5, r5, 0xffff
/* 804FF558  48 00 00 10 */	b lbl_804FF568
lbl_804FF55C:
/* 804FF55C  2C 05 80 00 */	cmpwi r5, -32768
/* 804FF560  40 80 00 08 */	bge lbl_804FF568
/* 804FF564  3C A5 00 01 */	addis r5, r5, 1
lbl_804FF568:
/* 804FF568  7C A3 FE 70 */	srawi r3, r5, 0x1f
/* 804FF56C  7C 60 2A 78 */	xor r0, r3, r5
/* 804FF570  7C 03 00 50 */	subf r0, r3, r0
/* 804FF574  2C 00 15 55 */	cmpwi r0, 0x1555
/* 804FF578  40 80 00 14 */	bge lbl_804FF58C
/* 804FF57C  A8 1D 00 DC */	lha r0, 0xdc(r29)
/* 804FF580  7C 00 20 50 */	subf r0, r0, r4
/* 804FF584  B0 01 00 0A */	sth r0, 0xa(r1)
/* 804FF588  48 00 00 20 */	b lbl_804FF5A8
lbl_804FF58C:
/* 804FF58C  2C 05 00 00 */	cmpwi r5, 0
/* 804FF590  40 81 00 10 */	ble lbl_804FF5A0
/* 804FF594  38 00 15 55 */	li r0, 0x1555
/* 804FF598  B0 01 00 0A */	sth r0, 0xa(r1)
/* 804FF59C  48 00 00 0C */	b lbl_804FF5A8
lbl_804FF5A0:
/* 804FF5A0  38 00 EA AB */	li r0, -5461
/* 804FF5A4  B0 01 00 0A */	sth r0, 0xa(r1)
lbl_804FF5A8:
/* 804FF5A8  7F A3 EB 78 */	mr r3, r29
/* 804FF5AC  38 81 00 08 */	addi r4, r1, 8
/* 804FF5B0  4B FF F9 65 */	bl Player_actor_add_calc_head_angle
/* 804FF5B4  7F C3 F3 78 */	mr r3, r30
lbl_804FF5B8:
/* 804FF5B8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804FF5BC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804FF5C0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804FF5C4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804FF5C8  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 804FF5CC  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 804FF5D0  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 804FF5D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FF5D8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 804FF5DC  4B B9 B9 41 */	bl func_8009AF1C
/* 804FF5E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804FF5E4  7C 08 03 A6 */	mtlr r0
/* 804FF5E8  38 21 00 60 */	addi r1, r1, 0x60
/* 804FF5EC  4E 80 00 20 */	blr 
