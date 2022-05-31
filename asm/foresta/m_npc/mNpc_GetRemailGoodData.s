lbl_803CD750:
/* 803CD750  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803CD754  7C 08 02 A6 */	mflr r0
/* 803CD758  90 01 00 64 */	stw r0, 0x64(r1)
/* 803CD75C  39 61 00 60 */	addi r11, r1, 0x60
/* 803CD760  4B CC D7 65 */	bl func_8009AEC4
/* 803CD764  38 00 00 00 */	li r0, 0
/* 803CD768  7C DD 33 79 */	or. r29, r6, r6
/* 803CD76C  B0 01 00 08 */	sth r0, 8(r1)
/* 803CD770  7C 7E 1B 78 */	mr r30, r3
/* 803CD774  7C 99 23 78 */	mr r25, r4
/* 803CD778  7C BF 2B 78 */	mr r31, r5
/* 803CD77C  40 82 00 0C */	bne lbl_803CD788
/* 803CD780  8B 7F 00 0D */	lbz r27, 0xd(r31)
/* 803CD784  48 00 00 0C */	b lbl_803CD790
lbl_803CD788:
/* 803CD788  88 1D 00 14 */	lbz r0, 0x14(r29)
/* 803CD78C  54 1B 06 7E */	clrlwi r27, r0, 0x19
lbl_803CD790:
/* 803CD790  3C 60 80 66 */	lis r3, start_no_table@ha /* 0x8065B27C@ha */
/* 803CD794  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 803CD798  38 63 B2 7C */	addi r3, r3, start_no_table@l /* 0x8065B27C@l */
/* 803CD79C  7F 43 00 2E */	lwzx r26, r3, r0
/* 803CD7A0  4B C8 F5 55 */	bl fqrand
/* 803CD7A4  3C 60 80 64 */	lis r3, lit_1268@ha /* 0x806428D4@ha */
/* 803CD7A8  C0 03 28 D4 */	lfs f0, lit_1268@l(r3)  /* 0x806428D4@l */
/* 803CD7AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD7B0  FC 00 00 1E */	fctiwz f0, f0
/* 803CD7B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803CD7B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD7BC  54 1C 07 FF */	clrlwi. r28, r0, 0x1f
/* 803CD7C0  40 82 00 0C */	bne lbl_803CD7CC
/* 803CD7C4  38 61 00 08 */	addi r3, r1, 8
/* 803CD7C8  4B FF FC ED */	bl mNpc_GetRemailPresent
lbl_803CD7CC:
/* 803CD7CC  7F 23 CB 78 */	mr r3, r25
/* 803CD7D0  7F E4 FB 78 */	mr r4, r31
/* 803CD7D4  7F A5 EB 78 */	mr r5, r29
/* 803CD7D8  4B FF FE 19 */	bl mNpc_SetRemailFreeString
/* 803CD7DC  57 60 10 3A */	slwi r0, r27, 2
/* 803CD7E0  7F FA 00 2E */	lwzx r31, r26, r0
/* 803CD7E4  4B C8 F5 11 */	bl fqrand
/* 803CD7E8  3C 60 80 64 */	lis r3, lit_1310@ha /* 0x806428D8@ha */
/* 803CD7EC  C0 03 28 D8 */	lfs f0, lit_1310@l(r3)  /* 0x806428D8@l */
/* 803CD7F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD7F4  FC 00 00 1E */	fctiwz f0, f0
/* 803CD7F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803CD7FC  83 41 00 14 */	lwz r26, 0x14(r1)
/* 803CD800  4B C8 F4 F5 */	bl fqrand
/* 803CD804  3C 60 80 64 */	lis r3, lit_1310@ha /* 0x806428D8@ha */
/* 803CD808  C0 03 28 D8 */	lfs f0, lit_1310@l(r3)  /* 0x806428D8@l */
/* 803CD80C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD810  FC 00 00 1E */	fctiwz f0, f0
/* 803CD814  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803CD818  83 61 00 1C */	lwz r27, 0x1c(r1)
/* 803CD81C  4B C8 F4 D9 */	bl fqrand
/* 803CD820  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x806428DC@ha */
/* 803CD824  57 80 20 36 */	slwi r0, r28, 4
/* 803CD828  C0 03 28 DC */	lfs f0, lit_1311@l(r3)  /* 0x806428DC@l */
/* 803CD82C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD830  FC 00 00 1E */	fctiwz f0, f0
/* 803CD834  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803CD838  80 61 00 24 */	lwz r3, 0x24(r1)
/* 803CD83C  7F 83 02 14 */	add r28, r3, r0
/* 803CD840  4B C8 F4 B5 */	bl fqrand
/* 803CD844  3C 60 80 64 */	lis r3, lit_1310@ha /* 0x806428D8@ha */
/* 803CD848  C0 03 28 D8 */	lfs f0, lit_1310@l(r3)  /* 0x806428D8@l */
/* 803CD84C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD850  FC 00 00 1E */	fctiwz f0, f0
/* 803CD854  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803CD858  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 803CD85C  4B C8 F4 99 */	bl fqrand
/* 803CD860  3C 80 80 64 */	lis r4, lit_1310@ha /* 0x806428D8@ha */
/* 803CD864  7F C3 F3 78 */	mr r3, r30
/* 803CD868  C0 04 28 D8 */	lfs f0, lit_1310@l(r4)  /* 0x806428D8@l */
/* 803CD86C  7C BF EA 14 */	add r5, r31, r29
/* 803CD870  7C DF E2 14 */	add r6, r31, r28
/* 803CD874  7C FF DA 14 */	add r7, r31, r27
/* 803CD878  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD87C  7D 1F D2 14 */	add r8, r31, r26
/* 803CD880  FC 00 00 1E */	fctiwz f0, f0
/* 803CD884  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803CD888  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CD88C  7C 9F 02 14 */	add r4, r31, r0
/* 803CD890  4B FF FC 9D */	bl mNpc_GetHandbillz
/* 803CD894  A0 01 00 08 */	lhz r0, 8(r1)
/* 803CD898  39 61 00 60 */	addi r11, r1, 0x60
/* 803CD89C  B0 1E 00 2C */	sth r0, 0x2c(r30)
/* 803CD8A0  4B CC D6 71 */	bl func_8009AF10
/* 803CD8A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803CD8A8  7C 08 03 A6 */	mtlr r0
/* 803CD8AC  38 21 00 60 */	addi r1, r1, 0x60
/* 803CD8B0  4E 80 00 20 */	blr 
