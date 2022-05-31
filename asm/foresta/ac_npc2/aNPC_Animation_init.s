lbl_8053B620:
/* 8053B620  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053B624  7C 08 02 A6 */	mflr r0
/* 8053B628  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053B62C  39 61 00 30 */	addi r11, r1, 0x30
/* 8053B630  4B B5 F8 99 */	bl func_8009AEC8
/* 8053B634  7C 7F 1B 78 */	mr r31, r3
/* 8053B638  7C BB 2B 78 */	mr r27, r5
/* 8053B63C  4B FF FE 55 */	bl aNPC_check_talk_anime
/* 8053B640  7C 60 1B 78 */	mr r0, r3
/* 8053B644  7F E3 FB 78 */	mr r3, r31
/* 8053B648  7C 1A 03 78 */	mr r26, r0
/* 8053B64C  7F 44 D3 78 */	mr r4, r26
/* 8053B650  48 00 0D 05 */	bl aNPC_set_frame_sub_speed
/* 8053B654  88 BF 07 51 */	lbz r5, 0x751(r31)
/* 8053B658  3C 60 80 6A */	lis r3, aNPC_animeTable@ha /* 0x806A2BA8@ha */
/* 8053B65C  57 40 18 38 */	slwi r0, r26, 3
/* 8053B660  28 05 00 00 */	cmplwi r5, 0
/* 8053B664  38 83 2B A8 */	addi r4, r3, aNPC_animeTable@l /* 0x806A2BA8@l */
/* 8053B668  7C C4 02 14 */	add r6, r4, r0
/* 8053B66C  40 82 00 0C */	bne lbl_8053B678
/* 8053B670  7C DE 33 78 */	mr r30, r6
/* 8053B674  48 00 00 1C */	b lbl_8053B690
lbl_8053B678:
/* 8053B678  3C 60 80 6A */	lis r3, aNPC_sub_animeSeqNoTable@ha /* 0x806A33B0@ha */
/* 8053B67C  54 A0 0D FC */	rlwinm r0, r5, 1, 0x17, 0x1e
/* 8053B680  38 63 33 B0 */	addi r3, r3, aNPC_sub_animeSeqNoTable@l /* 0x806A33B0@l */
/* 8053B684  7C 03 02 AE */	lhax r0, r3, r0
/* 8053B688  54 00 18 38 */	slwi r0, r0, 3
/* 8053B68C  7F C4 02 14 */	add r30, r4, r0
lbl_8053B690:
/* 8053B690  88 1F 09 70 */	lbz r0, 0x970(r31)
/* 8053B694  28 00 00 00 */	cmplwi r0, 0
/* 8053B698  40 82 00 0C */	bne lbl_8053B6A4
/* 8053B69C  7C DD 33 78 */	mr r29, r6
/* 8053B6A0  48 00 00 84 */	b lbl_8053B724
lbl_8053B6A4:
/* 8053B6A4  A8 1F 07 60 */	lha r0, 0x760(r31)
/* 8053B6A8  2C 00 01 1E */	cmpwi r0, 0x11e
/* 8053B6AC  41 82 00 5C */	beq lbl_8053B708
/* 8053B6B0  40 80 00 34 */	bge lbl_8053B6E4
/* 8053B6B4  2C 00 00 BF */	cmpwi r0, 0xbf
/* 8053B6B8  41 82 00 50 */	beq lbl_8053B708
/* 8053B6BC  40 80 00 1C */	bge lbl_8053B6D8
/* 8053B6C0  2C 00 00 94 */	cmpwi r0, 0x94
/* 8053B6C4  41 82 00 44 */	beq lbl_8053B708
/* 8053B6C8  40 80 00 50 */	bge lbl_8053B718
/* 8053B6CC  2C 00 00 6B */	cmpwi r0, 0x6b
/* 8053B6D0  41 82 00 38 */	beq lbl_8053B708
/* 8053B6D4  48 00 00 44 */	b lbl_8053B718
lbl_8053B6D8:
/* 8053B6D8  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8053B6DC  41 82 00 2C */	beq lbl_8053B708
/* 8053B6E0  48 00 00 38 */	b lbl_8053B718
lbl_8053B6E4:
/* 8053B6E4  2C 00 01 4A */	cmpwi r0, 0x14a
/* 8053B6E8  41 82 00 20 */	beq lbl_8053B708
/* 8053B6EC  40 80 00 10 */	bge lbl_8053B6FC
/* 8053B6F0  2C 00 01 23 */	cmpwi r0, 0x123
/* 8053B6F4  41 82 00 14 */	beq lbl_8053B708
/* 8053B6F8  48 00 00 20 */	b lbl_8053B718
lbl_8053B6FC:
/* 8053B6FC  2C 00 01 91 */	cmpwi r0, 0x191
/* 8053B700  41 82 00 08 */	beq lbl_8053B708
/* 8053B704  48 00 00 14 */	b lbl_8053B718
lbl_8053B708:
/* 8053B708  3C 60 80 6A */	lis r3, aNPC_animeTable@ha /* 0x806A2BA8@ha */
/* 8053B70C  38 63 2B A8 */	addi r3, r3, aNPC_animeTable@l /* 0x806A2BA8@l */
/* 8053B710  3B A3 07 A8 */	addi r29, r3, 0x7a8
/* 8053B714  48 00 00 10 */	b lbl_8053B724
lbl_8053B718:
/* 8053B718  3C 60 80 6A */	lis r3, aNPC_animeTable@ha /* 0x806A2BA8@ha */
/* 8053B71C  38 63 2B A8 */	addi r3, r3, aNPC_animeTable@l /* 0x806A2BA8@l */
/* 8053B720  3B A3 07 A0 */	addi r29, r3, 0x7a0
lbl_8053B724:
/* 8053B724  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 8053B728  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 8053B72C  83 86 00 00 */	lwz r28, 0(r6)
/* 8053B730  7C 1A 00 00 */	cmpw r26, r0
/* 8053B734  80 9F 01 C0 */	lwz r4, 0x1c0(r31)
/* 8053B738  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 8053B73C  7F 85 E3 78 */	mr r5, r28
/* 8053B740  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 8053B744  40 82 00 0C */	bne lbl_8053B750
/* 8053B748  C0 7F 01 B8 */	lfs f3, 0x1b8(r31)
/* 8053B74C  48 00 00 08 */	b lbl_8053B754
lbl_8053B750:
/* 8053B750  FC 60 08 90 */	fmr f3, f1
lbl_8053B754:
/* 8053B754  C0 9F 07 64 */	lfs f4, 0x764(r31)
/* 8053B758  38 E0 00 00 */	li r7, 0
/* 8053B75C  C0 1F 07 68 */	lfs f0, 0x768(r31)
/* 8053B760  C0 BC 00 20 */	lfs f5, 0x20(r28)
/* 8053B764  EC 84 00 32 */	fmuls f4, f4, f0
/* 8053B768  80 DC 00 1C */	lwz r6, 0x1c(r28)
/* 8053B76C  4B E3 55 69 */	bl cKF_SkeletonInfo_R_init
/* 8053B770  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 8053B774  28 00 00 00 */	cmplwi r0, 0
/* 8053B778  41 82 00 0C */	beq lbl_8053B784
/* 8053B77C  90 1F 07 2C */	stw r0, 0x72c(r31)
/* 8053B780  48 00 00 0C */	b lbl_8053B78C
lbl_8053B784:
/* 8053B784  38 00 00 00 */	li r0, 0
/* 8053B788  90 1F 07 2C */	stw r0, 0x72c(r31)
lbl_8053B78C:
/* 8053B78C  A8 1C 00 28 */	lha r0, 0x28(r28)
/* 8053B790  98 1F 07 1C */	stb r0, 0x71c(r31)
/* 8053B794  A8 1C 00 2A */	lha r0, 0x2a(r28)
/* 8053B798  98 1F 07 28 */	stb r0, 0x728(r31)
/* 8053B79C  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8053B7A0  28 00 00 00 */	cmplwi r0, 0
/* 8053B7A4  41 82 00 0C */	beq lbl_8053B7B0
/* 8053B7A8  90 1F 07 40 */	stw r0, 0x740(r31)
/* 8053B7AC  48 00 00 0C */	b lbl_8053B7B8
lbl_8053B7B0:
/* 8053B7B0  38 00 00 00 */	li r0, 0
/* 8053B7B4  90 1F 07 40 */	stw r0, 0x740(r31)
lbl_8053B7B8:
/* 8053B7B8  A8 1C 00 30 */	lha r0, 0x30(r28)
/* 8053B7BC  98 1F 07 30 */	stb r0, 0x730(r31)
/* 8053B7C0  A8 1C 00 32 */	lha r0, 0x32(r28)
/* 8053B7C4  98 1F 07 3C */	stb r0, 0x73c(r31)
/* 8053B7C8  A8 7F 07 56 */	lha r3, 0x756(r31)
/* 8053B7CC  2C 03 FF FF */	cmpwi r3, -1
/* 8053B7D0  41 82 00 30 */	beq lbl_8053B800
/* 8053B7D4  A8 1C 00 36 */	lha r0, 0x36(r28)
/* 8053B7D8  7C 03 00 00 */	cmpw r3, r0
/* 8053B7DC  41 82 00 24 */	beq lbl_8053B800
/* 8053B7E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8053B7E4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8053B7E8  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8053B7EC  3C A5 00 02 */	addis r5, r5, 2
/* 8053B7F0  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 8053B7F4  81 85 00 04 */	lwz r12, 4(r5)
/* 8053B7F8  7D 89 03 A6 */	mtctr r12
/* 8053B7FC  4E 80 04 21 */	bctrl 
lbl_8053B800:
/* 8053B800  A8 1C 00 36 */	lha r0, 0x36(r28)
/* 8053B804  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 8053B808  A8 1C 00 34 */	lha r0, 0x34(r28)
/* 8053B80C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 8053B810  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 8053B814  28 00 00 00 */	cmplwi r0, 0
/* 8053B818  41 82 00 0C */	beq lbl_8053B824
/* 8053B81C  90 1F 07 58 */	stw r0, 0x758(r31)
/* 8053B820  48 00 00 0C */	b lbl_8053B82C
lbl_8053B824:
/* 8053B824  38 00 00 00 */	li r0, 0
/* 8053B828  90 1F 07 58 */	stw r0, 0x758(r31)
lbl_8053B82C:
/* 8053B82C  80 BE 00 00 */	lwz r5, 0(r30)
/* 8053B830  38 7F 03 64 */	addi r3, r31, 0x364
/* 8053B834  80 9F 03 7C */	lwz r4, 0x37c(r31)
/* 8053B838  38 E0 00 00 */	li r7, 0
/* 8053B83C  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8053B840  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 8053B844  FC 60 08 90 */	fmr f3, f1
/* 8053B848  C0 9F 07 64 */	lfs f4, 0x764(r31)
/* 8053B84C  C0 A5 00 20 */	lfs f5, 0x20(r5)
/* 8053B850  80 C5 00 1C */	lwz r6, 0x1c(r5)
/* 8053B854  4B E3 54 81 */	bl cKF_SkeletonInfo_R_init
/* 8053B858  80 BD 00 00 */	lwz r5, 0(r29)
/* 8053B85C  38 7F 05 20 */	addi r3, r31, 0x520
/* 8053B860  80 9F 05 38 */	lwz r4, 0x538(r31)
/* 8053B864  38 E0 00 00 */	li r7, 0
/* 8053B868  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8053B86C  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 8053B870  FC 60 08 90 */	fmr f3, f1
/* 8053B874  C0 9F 07 64 */	lfs f4, 0x764(r31)
/* 8053B878  C0 A5 00 20 */	lfs f5, 0x20(r5)
/* 8053B87C  80 C5 00 1C */	lwz r6, 0x1c(r5)
/* 8053B880  4B E3 54 55 */	bl cKF_SkeletonInfo_R_init
/* 8053B884  A8 1C 00 30 */	lha r0, 0x30(r28)
/* 8053B888  3C 60 80 65 */	lis r3, lit_795@ha /* 0x80649378@ha */
/* 8053B88C  C0 23 93 78 */	lfs f1, lit_795@l(r3)  /* 0x80649378@l */
/* 8053B890  2C 00 00 00 */	cmpwi r0, 0
/* 8053B894  40 82 00 2C */	bne lbl_8053B8C0
/* 8053B898  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8053B89C  28 00 00 00 */	cmplwi r0, 0
/* 8053B8A0  40 82 00 20 */	bne lbl_8053B8C0
/* 8053B8A4  2C 1B 00 01 */	cmpwi r27, 1
/* 8053B8A8  41 82 00 18 */	beq lbl_8053B8C0
/* 8053B8AC  3C 80 80 65 */	lis r4, lit_796@ha /* 0x8064937C@ha */
/* 8053B8B0  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053B8B4  C0 04 93 7C */	lfs f0, lit_796@l(r4)  /* 0x8064937C@l */
/* 8053B8B8  C0 23 93 74 */	lfs f1, data_80649374@l(r3)  /* 0x80649374@l */
/* 8053B8BC  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_8053B8C0:
/* 8053B8C0  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 8053B8C4  38 A0 00 00 */	li r5, 0
/* 8053B8C8  38 00 00 01 */	li r0, 1
/* 8053B8CC  7F E3 FB 78 */	mr r3, r31
/* 8053B8D0  93 5F 07 14 */	stw r26, 0x714(r31)
/* 8053B8D4  7F 84 E3 78 */	mr r4, r28
/* 8053B8D8  90 BF 01 98 */	stw r5, 0x198(r31)
/* 8053B8DC  90 BF 01 A0 */	stw r5, 0x1a0(r31)
/* 8053B8E0  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8053B8E4  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 8053B8E8  FC 00 00 1E */	fctiwz f0, f0
/* 8053B8EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053B8F0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8053B8F4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8053B8F8  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 8053B8FC  4B FF FC 39 */	bl aNPC_set_anime_se_info
/* 8053B900  39 61 00 30 */	addi r11, r1, 0x30
/* 8053B904  4B B5 F6 11 */	bl func_8009AF14
/* 8053B908  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053B90C  7C 08 03 A6 */	mtlr r0
/* 8053B910  38 21 00 30 */	addi r1, r1, 0x30
/* 8053B914  4E 80 00 20 */	blr 
