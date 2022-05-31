lbl_803CD058:
/* 803CD058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CD05C  7C 08 02 A6 */	mflr r0
/* 803CD060  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CD064  39 61 00 20 */	addi r11, r1, 0x20
/* 803CD068  4B CC DE 6D */	bl func_8009AED4
/* 803CD06C  7C 7D 1B 78 */	mr r29, r3
/* 803CD070  7C 83 23 78 */	mr r3, r4
/* 803CD074  4B FF FF 45 */	bl mNpc_CheckNormalMail
/* 803CD078  7C 7E 1B 78 */	mr r30, r3
/* 803CD07C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803CD080  28 00 00 02 */	cmplwi r0, 2
/* 803CD084  40 80 00 64 */	bge lbl_803CD0E8
/* 803CD088  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CD08C  7F A4 EB 78 */	mr r4, r29
/* 803CD090  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CD094  3C A3 00 02 */	addis r5, r3, 2
/* 803CD098  83 E5 61 3C */	lwz r31, 0x613c(r5)
/* 803CD09C  A0 05 61 26 */	lhz r0, 0x6126(r5)
/* 803CD0A0  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 803CD0A4  B0 1F 10 DC */	sth r0, 0x10dc(r31)
/* 803CD0A8  88 05 61 25 */	lbz r0, 0x6125(r5)
/* 803CD0AC  98 1F 10 DE */	stb r0, 0x10de(r31)
/* 803CD0B0  88 05 61 23 */	lbz r0, 0x6123(r5)
/* 803CD0B4  98 1F 10 DF */	stb r0, 0x10df(r31)
/* 803CD0B8  88 1F 10 F0 */	lbz r0, 0x10f0(r31)
/* 803CD0BC  53 C0 3E 30 */	rlwimi r0, r30, 7, 0x18, 0x18
/* 803CD0C0  98 1F 10 F0 */	stb r0, 0x10f0(r31)
/* 803CD0C4  88 BD 00 0D */	lbz r5, 0xd(r29)
/* 803CD0C8  88 1F 10 F0 */	lbz r0, 0x10f0(r31)
/* 803CD0CC  50 A0 06 7E */	rlwimi r0, r5, 0, 0x19, 0x1f
/* 803CD0D0  98 1F 10 F0 */	stb r0, 0x10f0(r31)
/* 803CD0D4  48 00 48 7D */	bl mNpc_GetNpcWorldNameAnm
/* 803CD0D8  4B FE 69 C5 */	bl mLd_GetLandName
/* 803CD0DC  7C 64 1B 78 */	mr r4, r3
/* 803CD0E0  38 7F 10 E8 */	addi r3, r31, 0x10e8
/* 803CD0E4  4B FE 68 0D */	bl mLd_CopyLandName
lbl_803CD0E8:
/* 803CD0E8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 803CD0EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803CD0F0  4B CC DE 31 */	bl func_8009AF20
/* 803CD0F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CD0F8  7C 08 03 A6 */	mtlr r0
/* 803CD0FC  38 21 00 20 */	addi r1, r1, 0x20
/* 803CD100  4E 80 00 20 */	blr 
