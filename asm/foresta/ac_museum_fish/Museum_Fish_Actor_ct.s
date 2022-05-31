lbl_8042F884:
/* 8042F884  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8042F888  7C 08 02 A6 */	mflr r0
/* 8042F88C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8042F890  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8042F894  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8042F898  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8042F89C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8042F8A0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8042F8A4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8042F8A8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8042F8AC  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 8042F8B0  39 61 00 50 */	addi r11, r1, 0x50
/* 8042F8B4  4B C6 B5 F9 */	bl func_8009AEAC
/* 8042F8B8  3C A0 81 1D */	lis r5, data_811CDFB8@ha /* 0x811CDFB8@ha */
/* 8042F8BC  7C 78 1B 78 */	mr r24, r3
/* 8042F8C0  93 05 DF B8 */	stw r24, data_811CDFB8@l(r5)  /* 0x811CDFB8@l */
/* 8042F8C4  3C C0 80 68 */	lis r6, data_80684E58@ha /* 0x80684E58@ha */
/* 8042F8C8  3C B8 00 01 */	addis r5, r24, 1
/* 8042F8CC  38 00 00 1E */	li r0, 0x1e
/* 8042F8D0  B0 05 4D B6 */	sth r0, 0x4db6(r5)
/* 8042F8D4  7C 99 23 78 */	mr r25, r4
/* 8042F8D8  3B C6 4E 58 */	addi r30, r6, data_80684E58@l /* 0x80684E58@l */
/* 8042F8DC  48 00 1A 6D */	bl mfish_point_light_ct
/* 8042F8E0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8042F8E4  3B 9E 13 00 */	addi r28, r30, 0x1300
/* 8042F8E8  3B 7E 13 38 */	addi r27, r30, 0x1338
/* 8042F8EC  3B FE 00 60 */	addi r31, r30, 0x60
/* 8042F8F0  3A 83 42 48 */	addi r20, r3, lit_468@l /* 0x80644248@l */
/* 8042F8F4  3A BE 13 70 */	addi r21, r30, 0x1370
/* 8042F8F8  3B 40 00 00 */	li r26, 0
/* 8042F8FC  3A E0 00 00 */	li r23, 0
/* 8042F900  3A C0 00 00 */	li r22, 0
lbl_8042F904:
/* 8042F904  7F B8 BA 14 */	add r29, r24, r23
/* 8042F908  7C 1C B0 2E */	lwzx r0, r28, r22
/* 8042F90C  3C DD 00 01 */	addis r6, r29, 1
/* 8042F910  90 06 02 04 */	stw r0, 0x204(r6)
/* 8042F914  7C C7 33 78 */	mr r7, r6
/* 8042F918  3A 66 FC B8 */	addi r19, r6, -840
/* 8042F91C  38 C6 01 A8 */	addi r6, r6, 0x1a8
/* 8042F920  7C 9C B0 2E */	lwzx r4, r28, r22
/* 8042F924  7E 63 9B 78 */	mr r3, r19
/* 8042F928  7C BB B0 2E */	lwzx r5, r27, r22
/* 8042F92C  38 E7 01 CC */	addi r7, r7, 0x1cc
/* 8042F930  4B F4 11 65 */	bl cKF_SkeletonInfo_R_ct
/* 8042F934  7C 1F B0 2E */	lwzx r0, r31, r22
/* 8042F938  7E 63 9B 78 */	mr r3, r19
/* 8042F93C  7C 9B B0 2E */	lwzx r4, r27, r22
/* 8042F940  38 A0 00 00 */	li r5, 0
/* 8042F944  2C 00 00 02 */	cmpwi r0, 2
/* 8042F948  40 82 00 10 */	bne lbl_8042F958
/* 8042F94C  3C C0 80 64 */	lis r6, lit_1315@ha /* 0x80644334@ha */
/* 8042F950  C0 26 43 34 */	lfs f1, lit_1315@l(r6)  /* 0x80644334@l */
/* 8042F954  48 00 00 0C */	b lbl_8042F960
lbl_8042F958:
/* 8042F958  3C C0 80 64 */	lis r6, lit_471@ha /* 0x8064425C@ha */
/* 8042F95C  C0 26 42 5C */	lfs f1, lit_471@l(r6)  /* 0x8064425C@l */
lbl_8042F960:
/* 8042F960  C0 54 00 00 */	lfs f2, 0(r20)
/* 8042F964  4B F4 1E 55 */	bl cKF_SkeletonInfo_R_init_standard_repeat_speedsetandmorph
/* 8042F968  7C 15 B4 2E */	lfsx f0, r21, r22
/* 8042F96C  3C 7D 00 01 */	addis r3, r29, 1
/* 8042F970  D0 03 FC C8 */	stfs f0, -0x338(r3)
/* 8042F974  4B C2 D3 59 */	bl func_8005CCCC
/* 8042F978  3C 9D 00 01 */	addis r4, r29, 1
/* 8042F97C  B0 64 01 F0 */	sth r3, 0x1f0(r4)
/* 8042F980  4B C2 D3 4D */	bl func_8005CCCC
/* 8042F984  3B 5A 00 01 */	addi r26, r26, 1
/* 8042F988  3C 9D 00 01 */	addis r4, r29, 1
/* 8042F98C  2C 1A 00 0E */	cmpwi r26, 0xe
/* 8042F990  B0 64 01 F4 */	sth r3, 0x1f4(r4)
/* 8042F994  3A F7 05 58 */	addi r23, r23, 0x558
/* 8042F998  3A D6 00 04 */	addi r22, r22, 4
/* 8042F99C  41 80 FF 68 */	blt lbl_8042F904
/* 8042F9A0  38 60 00 21 */	li r3, 0x21
/* 8042F9A4  4B F9 7B 25 */	bl mMmd_FishInfo
/* 8042F9A8  2C 03 00 00 */	cmpwi r3, 0
/* 8042F9AC  41 82 00 14 */	beq lbl_8042F9C0
/* 8042F9B0  3C 78 00 01 */	addis r3, r24, 1
/* 8042F9B4  38 03 47 88 */	addi r0, r3, 0x4788
/* 8042F9B8  90 03 D6 50 */	stw r0, -0x29b0(r3)
/* 8042F9BC  48 00 00 14 */	b lbl_8042F9D0
lbl_8042F9C0:
/* 8042F9C0  3C 78 00 01 */	addis r3, r24, 1
/* 8042F9C4  7F 24 CB 78 */	mr r4, r25
/* 8042F9C8  38 63 47 88 */	addi r3, r3, 0x4788
/* 8042F9CC  48 02 97 91 */	bl func_8045915C
lbl_8042F9D0:
/* 8042F9D0  3A 98 01 78 */	addi r20, r24, 0x178
/* 8042F9D4  3A 60 00 00 */	li r19, 0
/* 8042F9D8  3B 40 00 00 */	li r26, 0
lbl_8042F9DC:
/* 8042F9DC  A8 14 06 2E */	lha r0, 0x62e(r20)
/* 8042F9E0  7E 63 9B 78 */	mr r3, r19
/* 8042F9E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8042F9E8  B0 14 06 2E */	sth r0, 0x62e(r20)
/* 8042F9EC  4B F9 7A DD */	bl mMmd_FishInfo
/* 8042F9F0  2C 03 00 00 */	cmpwi r3, 0
/* 8042F9F4  41 82 00 3C */	beq lbl_8042FA30
/* 8042F9F8  38 7E 02 64 */	addi r3, r30, 0x264
/* 8042F9FC  38 FE 03 04 */	addi r7, r30, 0x304
/* 8042FA00  7C 03 D0 2E */	lwzx r0, r3, r26
/* 8042FA04  7E 83 A3 78 */	mr r3, r20
/* 8042FA08  7F 24 CB 78 */	mr r4, r25
/* 8042FA0C  7E 65 9B 78 */	mr r5, r19
/* 8042FA10  90 14 05 84 */	stw r0, 0x584(r20)
/* 8042FA14  38 C0 00 01 */	li r6, 1
/* 8042FA18  7C 07 D0 2E */	lwzx r0, r7, r26
/* 8042FA1C  90 14 05 88 */	stw r0, 0x588(r20)
/* 8042FA20  A8 14 06 2E */	lha r0, 0x62e(r20)
/* 8042FA24  60 00 00 01 */	ori r0, r0, 1
/* 8042FA28  B0 14 06 2E */	sth r0, 0x62e(r20)
/* 8042FA2C  4B FF FC E9 */	bl func_8042F714
lbl_8042FA30:
/* 8042FA30  3A 73 00 01 */	addi r19, r19, 1
/* 8042FA34  3A 94 06 48 */	addi r20, r20, 0x648
/* 8042FA38  2C 13 00 28 */	cmpwi r19, 0x28
/* 8042FA3C  3B 5A 00 04 */	addi r26, r26, 4
/* 8042FA40  41 80 FF 9C */	blt lbl_8042F9DC
/* 8042FA44  3C C0 80 64 */	lis r6, lit_4470@ha /* 0x806443F0@ha */
/* 8042FA48  3C A0 80 64 */	lis r5, lit_699@ha /* 0x806442B8@ha */
/* 8042FA4C  3C 80 80 64 */	lis r4, lit_840@ha /* 0x806442D8@ha */
/* 8042FA50  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8042FA54  C3 86 43 F0 */	lfs f28, lit_4470@l(r6)  /* 0x806443F0@l */
/* 8042FA58  3A 80 00 00 */	li r20, 0
/* 8042FA5C  C3 A5 42 B8 */	lfs f29, lit_699@l(r5)  /* 0x806442B8@l */
/* 8042FA60  3B 20 00 00 */	li r25, 0
/* 8042FA64  C3 C4 42 D8 */	lfs f30, lit_840@l(r4)  /* 0x806442D8@l */
/* 8042FA68  C3 E3 42 44 */	lfs f31, data_80644244@l(r3)  /* 0x80644244@l */
lbl_8042FA6C:
/* 8042FA6C  4B C2 D2 89 */	bl fqrand
/* 8042FA70  EC 1C 00 72 */	fmuls f0, f28, f1
/* 8042FA74  7E 78 CA 14 */	add r19, r24, r25
/* 8042FA78  3C 73 00 01 */	addis r3, r19, 1
/* 8042FA7C  EC 1D 00 2A */	fadds f0, f29, f0
/* 8042FA80  FC 00 00 1E */	fctiwz f0, f0
/* 8042FA84  D8 01 00 08 */	stfd f0, 8(r1)
/* 8042FA88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8042FA8C  B0 03 4D 50 */	sth r0, 0x4d50(r3)
/* 8042FA90  4B C2 D2 65 */	bl fqrand
/* 8042FA94  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8042FA98  3A 94 00 01 */	addi r20, r20, 1
/* 8042FA9C  2C 14 00 14 */	cmpwi r20, 0x14
/* 8042FAA0  3C 73 00 01 */	addis r3, r19, 1
/* 8042FAA4  3B 39 00 02 */	addi r25, r25, 2
/* 8042FAA8  EC 1F 00 2A */	fadds f0, f31, f0
/* 8042FAAC  FC 00 00 1E */	fctiwz f0, f0
/* 8042FAB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8042FAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042FAB8  B0 03 4D 78 */	sth r0, 0x4d78(r3)
/* 8042FABC  41 80 FF B0 */	blt lbl_8042FA6C
/* 8042FAC0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8042FAC4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8042FAC8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8042FACC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8042FAD0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8042FAD4  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8042FAD8  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 8042FADC  39 61 00 50 */	addi r11, r1, 0x50
/* 8042FAE0  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8042FAE4  4B C6 B4 15 */	bl func_8009AEF8
/* 8042FAE8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8042FAEC  7C 08 03 A6 */	mtlr r0
/* 8042FAF0  38 21 00 90 */	addi r1, r1, 0x90
/* 8042FAF4  4E 80 00 20 */	blr 
