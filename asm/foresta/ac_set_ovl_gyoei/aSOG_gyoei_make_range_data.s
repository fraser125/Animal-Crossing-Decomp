lbl_8049A704:
/* 8049A704  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049A708  7C 08 02 A6 */	mflr r0
/* 8049A70C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049A710  39 61 00 30 */	addi r11, r1, 0x30
/* 8049A714  4B C0 07 BD */	bl func_8009AED0
/* 8049A718  7C 9C 23 78 */	mr r28, r4
/* 8049A71C  3B E3 43 A8 */	addi r31, r3, 0x43a8
/* 8049A720  38 61 00 10 */	addi r3, r1, 0x10
/* 8049A724  38 81 00 0C */	addi r4, r1, 0xc
/* 8049A728  38 A1 00 08 */	addi r5, r1, 8
/* 8049A72C  4B FF FA 05 */	bl aSOG_gyoei_chk_term_info
/* 8049A730  7F E3 FB 78 */	mr r3, r31
/* 8049A734  38 80 01 40 */	li r4, 0x140
/* 8049A738  4B BC 29 31 */	bl bzero
/* 8049A73C  57 80 05 28 */	rlwinm r0, r28, 0, 0x14, 0x14
/* 8049A740  38 60 00 00 */	li r3, 0
/* 8049A744  28 00 08 00 */	cmplwi r0, 0x800
/* 8049A748  90 7F 01 40 */	stw r3, 0x140(r31)
/* 8049A74C  40 82 00 54 */	bne lbl_8049A7A0
/* 8049A750  57 83 02 52 */	rlwinm r3, r28, 0, 9, 9
/* 8049A754  3C 03 FF C0 */	addis r0, r3, 0xffc0
/* 8049A758  28 00 00 00 */	cmplwi r0, 0
/* 8049A75C  40 82 00 18 */	bne lbl_8049A774
/* 8049A760  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80644CFC@ha */
/* 8049A764  3B 80 00 02 */	li r28, 2
/* 8049A768  C0 03 4C FC */	lfs f0, lit_750@l(r3)  /* 0x80644CFC@l */
/* 8049A76C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8049A770  48 00 00 6C */	b lbl_8049A7DC
lbl_8049A774:
/* 8049A774  57 83 02 94 */	rlwinm r3, r28, 0, 0xa, 0xa
/* 8049A778  3C 03 FF E0 */	addis r0, r3, 0xffe0
/* 8049A77C  28 00 00 00 */	cmplwi r0, 0
/* 8049A780  40 82 00 18 */	bne lbl_8049A798
/* 8049A784  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80644CFC@ha */
/* 8049A788  3B 80 00 05 */	li r28, 5
/* 8049A78C  C0 03 4C FC */	lfs f0, lit_750@l(r3)  /* 0x80644CFC@l */
/* 8049A790  D0 01 00 08 */	stfs f0, 8(r1)
/* 8049A794  48 00 00 48 */	b lbl_8049A7DC
lbl_8049A798:
/* 8049A798  3B 80 00 01 */	li r28, 1
/* 8049A79C  48 00 00 40 */	b lbl_8049A7DC
lbl_8049A7A0:
/* 8049A7A0  57 80 06 30 */	rlwinm r0, r28, 0, 0x18, 0x18
/* 8049A7A4  28 00 00 80 */	cmplwi r0, 0x80
/* 8049A7A8  40 82 00 30 */	bne lbl_8049A7D8
/* 8049A7AC  7F 83 E3 78 */	mr r3, r28
/* 8049A7B0  4B FF FB 61 */	bl aSOG_gyoei_check_fishing_event
/* 8049A7B4  2C 03 00 01 */	cmpwi r3, 1
/* 8049A7B8  40 82 00 18 */	bne lbl_8049A7D0
/* 8049A7BC  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80644CFC@ha */
/* 8049A7C0  3B 80 00 04 */	li r28, 4
/* 8049A7C4  C0 03 4C FC */	lfs f0, lit_750@l(r3)  /* 0x80644CFC@l */
/* 8049A7C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8049A7CC  48 00 00 10 */	b lbl_8049A7DC
lbl_8049A7D0:
/* 8049A7D0  3B 80 00 00 */	li r28, 0
/* 8049A7D4  48 00 00 08 */	b lbl_8049A7DC
lbl_8049A7D8:
/* 8049A7D8  3B 80 00 03 */	li r28, 3
lbl_8049A7DC:
/* 8049A7DC  4B FF F8 A9 */	bl aSOG_gyoei_get_time_no
/* 8049A7E0  3C 80 80 69 */	lis r4, make_range_data_proc@ha /* 0x8068CCD0@ha */
/* 8049A7E4  7C 60 1B 78 */	mr r0, r3
/* 8049A7E8  57 9D 10 3A */	slwi r29, r28, 2
/* 8049A7EC  7F E3 FB 78 */	mr r3, r31
/* 8049A7F0  3B C4 CC D0 */	addi r30, r4, make_range_data_proc@l /* 0x8068CCD0@l */
/* 8049A7F4  7C 1C 03 78 */	mr r28, r0
/* 8049A7F8  7D 9E E8 2E */	lwzx r12, r30, r29
/* 8049A7FC  7F 84 E3 78 */	mr r4, r28
/* 8049A800  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8049A804  38 C0 00 00 */	li r6, 0
/* 8049A808  C0 21 00 08 */	lfs f1, 8(r1)
/* 8049A80C  7D 89 03 A6 */	mtctr r12
/* 8049A810  4E 80 04 21 */	bctrl 
/* 8049A814  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80644CFC@ha */
/* 8049A818  C0 21 00 08 */	lfs f1, 8(r1)
/* 8049A81C  C0 03 4C FC */	lfs f0, lit_750@l(r3)  /* 0x80644CFC@l */
/* 8049A820  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8049A824  41 82 00 24 */	beq lbl_8049A848
/* 8049A828  7D 9E E8 2E */	lwzx r12, r30, r29
/* 8049A82C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8049A830  7F E3 FB 78 */	mr r3, r31
/* 8049A834  7F 84 E3 78 */	mr r4, r28
/* 8049A838  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8049A83C  38 C0 00 01 */	li r6, 1
/* 8049A840  7D 89 03 A6 */	mtctr r12
/* 8049A844  4E 80 04 21 */	bctrl 
lbl_8049A848:
/* 8049A848  39 61 00 30 */	addi r11, r1, 0x30
/* 8049A84C  4B C0 06 D1 */	bl func_8009AF1C
/* 8049A850  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049A854  7C 08 03 A6 */	mtlr r0
/* 8049A858  38 21 00 30 */	addi r1, r1, 0x30
/* 8049A85C  4E 80 00 20 */	blr 
