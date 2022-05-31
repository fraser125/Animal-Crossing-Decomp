lbl_805E60A4:
/* 805E60A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E60A8  7C 08 02 A6 */	mflr r0
/* 805E60AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E60B0  39 61 00 30 */	addi r11, r1, 0x30
/* 805E60B4  4B AB 4E 09 */	bl func_8009AEBC
/* 805E60B8  7C 7A 1B 78 */	mr r26, r3
/* 805E60BC  38 00 00 04 */	li r0, 4
/* 805E60C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E60C4  B0 1A 02 2C */	sth r0, 0x22c(r26)
/* 805E60C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E60CC  38 00 00 01 */	li r0, 1
/* 805E60D0  3F 83 00 01 */	addis r28, r3, 1
/* 805E60D4  B0 1A 02 2E */	sth r0, 0x22e(r26)
/* 805E60D8  3B 1A 02 1C */	addi r24, r26, 0x21c
/* 805E60DC  3B FA 00 BC */	addi r31, r26, 0xbc
/* 805E60E0  3B A3 00 20 */	addi r29, r3, 0x20
/* 805E60E4  3F 63 00 02 */	addis r27, r3, 2
/* 805E60E8  3A E0 00 00 */	li r23, 0
/* 805E60EC  3B 20 00 00 */	li r25, 0
/* 805E60F0  3B C0 00 00 */	li r30, 0
/* 805E60F4  3B 9C 74 38 */	addi r28, r28, 0x7438
lbl_805E60F8:
/* 805E60F8  7F A3 EB 78 */	mr r3, r29
/* 805E60FC  4B DF A5 55 */	bl mPr_CheckPrivate
/* 805E6100  2C 03 00 01 */	cmpwi r3, 1
/* 805E6104  40 82 00 4C */	bne lbl_805E6150
/* 805E6108  80 1B 61 3C */	lwz r0, 0x613c(r27)
/* 805E610C  7C 00 E8 40 */	cmplw r0, r29
/* 805E6110  40 82 00 10 */	bne lbl_805E6120
/* 805E6114  4B DB 4C 19 */	bl mEv_CheckFirstIntro
/* 805E6118  2C 03 00 00 */	cmpwi r3, 0
/* 805E611C  40 82 00 34 */	bne lbl_805E6150
lbl_805E6120:
/* 805E6120  7F E3 FB 78 */	mr r3, r31
/* 805E6124  7F A4 EB 78 */	mr r4, r29
/* 805E6128  4B DF 9D 95 */	bl mPr_CopyPlayerName
/* 805E612C  88 7D 00 14 */	lbz r3, 0x14(r29)
/* 805E6130  38 00 00 00 */	li r0, 0
/* 805E6134  3A F7 00 01 */	addi r23, r23, 1
/* 805E6138  98 7F 00 08 */	stb r3, 8(r31)
/* 805E613C  98 1F 00 09 */	stb r0, 9(r31)
/* 805E6140  98 1F 00 0A */	stb r0, 0xa(r31)
/* 805E6144  7F F8 C9 2E */	stwx r31, r24, r25
/* 805E6148  3B 39 00 04 */	addi r25, r25, 4
/* 805E614C  3B FF 00 0B */	addi r31, r31, 0xb
lbl_805E6150:
/* 805E6150  3B DE 00 01 */	addi r30, r30, 1
/* 805E6154  3B BD 24 40 */	addi r29, r29, 0x2440
/* 805E6158  2C 1E 00 04 */	cmpwi r30, 4
/* 805E615C  41 80 FF 9C */	blt lbl_805E60F8
/* 805E6160  3C 60 80 6D */	lis r3, akiya_str@ha /* 0x806CDE38@ha */
/* 805E6164  56 F9 10 3A */	slwi r25, r23, 2
/* 805E6168  3B C3 DE 38 */	addi r30, r3, akiya_str@l /* 0x806CDE38@l */
/* 805E616C  3B A0 FF FF */	li r29, -1
/* 805E6170  3B 60 00 00 */	li r27, 0
/* 805E6174  48 00 00 28 */	b lbl_805E619C
lbl_805E6178:
/* 805E6178  7F E3 FB 78 */	mr r3, r31
/* 805E617C  7F C4 F3 78 */	mr r4, r30
/* 805E6180  4B DF 9D 3D */	bl mPr_CopyPlayerName
/* 805E6184  9B BF 00 08 */	stb r29, 8(r31)
/* 805E6188  3A F7 00 01 */	addi r23, r23, 1
/* 805E618C  9B 7F 00 09 */	stb r27, 9(r31)
/* 805E6190  7F F8 C9 2E */	stwx r31, r24, r25
/* 805E6194  3B 39 00 04 */	addi r25, r25, 4
/* 805E6198  3B FF 00 0B */	addi r31, r31, 0xb
lbl_805E619C:
/* 805E619C  2C 17 00 04 */	cmpwi r23, 4
/* 805E61A0  41 80 FF D8 */	blt lbl_805E6178
/* 805E61A4  3C 60 80 B0 */	lis r3, data_80B074D8@ha /* 0x80B074D8@ha */
/* 805E61A8  3B FA 00 E8 */	addi r31, r26, 0xe8
/* 805E61AC  38 03 74 D8 */	addi r0, r3, data_80B074D8@l /* 0x80B074D8@l */
/* 805E61B0  3B C0 00 00 */	li r30, 0
/* 805E61B4  7C 1D 03 78 */	mr r29, r0
/* 805E61B8  3B 20 00 00 */	li r25, 0
lbl_805E61BC:
/* 805E61BC  7F 83 E3 78 */	mr r3, r28
/* 805E61C0  4B DE 63 FD */	bl mNpc_CheckFreeAnimalInfo
/* 805E61C4  2C 03 00 00 */	cmpwi r3, 0
/* 805E61C8  40 82 01 10 */	bne lbl_805E62D8
/* 805E61CC  7F E3 FB 78 */	mr r3, r31
/* 805E61D0  7F 84 E3 78 */	mr r4, r28
/* 805E61D4  3B 7C 08 98 */	addi r27, r28, 0x898
/* 805E61D8  4B DE B7 79 */	bl mNpc_GetNpcWorldNameAnm
/* 805E61DC  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 805E61E0  4B DE BD 89 */	bl mNpc_GetLooks2Sex
/* 805E61E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E61E8  98 7F 00 08 */	stb r3, 8(r31)
/* 805E61EC  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 805E61F0  7C 60 CA 14 */	add r3, r0, r25
/* 805E61F4  3C 63 00 02 */	addis r3, r3, 2
/* 805E61F8  C0 23 61 6C */	lfs f1, 0x616c(r3)
/* 805E61FC  4B FF FC 19 */	bl func_805E5E14
/* 805E6200  98 7F 00 09 */	stb r3, 9(r31)
/* 805E6204  7F 43 D3 78 */	mr r3, r26
/* 805E6208  88 9B 00 01 */	lbz r4, 1(r27)
/* 805E620C  88 BB 00 02 */	lbz r5, 2(r27)
/* 805E6210  4B FF FE 5D */	bl mMP_GetFgBlockName
/* 805E6214  7F A5 EB 78 */	mr r5, r29
/* 805E6218  38 DD 00 02 */	addi r6, r29, 2
/* 805E621C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805E6220  48 00 00 60 */	b lbl_805E6280
lbl_805E6224:
/* 805E6224  7C 00 18 40 */	cmplw r0, r3
/* 805E6228  40 82 00 54 */	bne lbl_805E627C
/* 805E622C  38 00 00 03 */	li r0, 3
/* 805E6230  38 C5 00 02 */	addi r6, r5, 2
/* 805E6234  38 E0 00 00 */	li r7, 0
/* 805E6238  7C 09 03 A6 */	mtctr r0
lbl_805E623C:
/* 805E623C  88 66 00 00 */	lbz r3, 0(r6)
/* 805E6240  88 1B 00 03 */	lbz r0, 3(r27)
/* 805E6244  7C 03 00 40 */	cmplw r3, r0
/* 805E6248  40 82 00 18 */	bne lbl_805E6260
/* 805E624C  88 7B 00 04 */	lbz r3, 4(r27)
/* 805E6250  88 86 00 01 */	lbz r4, 1(r6)
/* 805E6254  38 03 FF FF */	addi r0, r3, -1
/* 805E6258  7C 04 00 00 */	cmpw r4, r0
/* 805E625C  41 82 00 10 */	beq lbl_805E626C
lbl_805E6260:
/* 805E6260  38 E7 00 01 */	addi r7, r7, 1
/* 805E6264  38 C6 00 03 */	addi r6, r6, 3
/* 805E6268  42 00 FF D4 */	bdnz lbl_805E623C
lbl_805E626C:
/* 805E626C  2C 07 00 03 */	cmpwi r7, 3
/* 805E6270  40 82 00 1C */	bne lbl_805E628C
/* 805E6274  38 C5 00 02 */	addi r6, r5, 2
/* 805E6278  48 00 00 14 */	b lbl_805E628C
lbl_805E627C:
/* 805E627C  38 A5 00 0C */	addi r5, r5, 0xc
lbl_805E6280:
/* 805E6280  A0 65 00 00 */	lhz r3, 0(r5)
/* 805E6284  28 03 03 B8 */	cmplwi r3, 0x3b8
/* 805E6288  40 82 FF 9C */	bne lbl_805E6224
lbl_805E628C:
/* 805E628C  88 66 00 02 */	lbz r3, 2(r6)
/* 805E6290  38 00 00 00 */	li r0, 0
/* 805E6294  98 7F 00 0A */	stb r3, 0xa(r31)
/* 805E6298  88 9B 00 02 */	lbz r4, 2(r27)
/* 805E629C  88 7B 00 01 */	lbz r3, 1(r27)
/* 805E62A0  38 84 FF FF */	addi r4, r4, -1
/* 805E62A4  38 63 FF FF */	addi r3, r3, -1
/* 805E62A8  1C 84 00 64 */	mulli r4, r4, 0x64
/* 805E62AC  1C 63 00 14 */	mulli r3, r3, 0x14
/* 805E62B0  7C 64 1A 14 */	add r3, r4, r3
/* 805E62B4  38 83 01 90 */	addi r4, r3, 0x190
/* 805E62B8  7C 9A 22 14 */	add r4, r26, r4
/* 805E62BC  A8 64 00 10 */	lha r3, 0x10(r4)
/* 805E62C0  54 63 10 3A */	slwi r3, r3, 2
/* 805E62C4  7F E4 19 2E */	stwx r31, r4, r3
/* 805E62C8  A8 64 00 10 */	lha r3, 0x10(r4)
/* 805E62CC  38 63 00 01 */	addi r3, r3, 1
/* 805E62D0  B0 64 00 10 */	sth r3, 0x10(r4)
/* 805E62D4  B0 04 00 12 */	sth r0, 0x12(r4)
lbl_805E62D8:
/* 805E62D8  3B DE 00 01 */	addi r30, r30, 1
/* 805E62DC  3B 9C 09 88 */	addi r28, r28, 0x988
/* 805E62E0  2C 1E 00 0F */	cmpwi r30, 0xf
/* 805E62E4  3B FF 00 0B */	addi r31, r31, 0xb
/* 805E62E8  3B 39 00 38 */	addi r25, r25, 0x38
/* 805E62EC  41 80 FE D0 */	blt lbl_805E61BC
/* 805E62F0  38 00 00 1E */	li r0, 0x1e
/* 805E62F4  38 FA 01 90 */	addi r7, r26, 0x190
/* 805E62F8  7C 09 03 A6 */	mtctr r0
lbl_805E62FC:
/* 805E62FC  A8 07 00 12 */	lha r0, 0x12(r7)
/* 805E6300  2C 00 00 00 */	cmpwi r0, 0
/* 805E6304  40 82 00 58 */	bne lbl_805E635C
/* 805E6308  A8 07 00 10 */	lha r0, 0x10(r7)
/* 805E630C  2C 00 00 01 */	cmpwi r0, 1
/* 805E6310  40 81 00 4C */	ble lbl_805E635C
/* 805E6314  39 00 00 00 */	li r8, 0
/* 805E6318  48 00 00 34 */	b lbl_805E634C
lbl_805E631C:
/* 805E631C  55 00 10 3A */	slwi r0, r8, 2
/* 805E6320  7C 87 02 14 */	add r4, r7, r0
/* 805E6324  80 A4 00 00 */	lwz r5, 0(r4)
/* 805E6328  80 C4 00 04 */	lwz r6, 4(r4)
/* 805E632C  88 65 00 09 */	lbz r3, 9(r5)
/* 805E6330  88 06 00 09 */	lbz r0, 9(r6)
/* 805E6334  7C 03 00 40 */	cmplw r3, r0
/* 805E6338  40 81 00 10 */	ble lbl_805E6348
/* 805E633C  90 C4 00 00 */	stw r6, 0(r4)
/* 805E6340  39 00 FF FF */	li r8, -1
/* 805E6344  90 A4 00 04 */	stw r5, 4(r4)
lbl_805E6348:
/* 805E6348  39 08 00 01 */	addi r8, r8, 1
lbl_805E634C:
/* 805E634C  A8 67 00 10 */	lha r3, 0x10(r7)
/* 805E6350  38 03 FF FF */	addi r0, r3, -1
/* 805E6354  7C 08 00 00 */	cmpw r8, r0
/* 805E6358  41 80 FF C4 */	blt lbl_805E631C
lbl_805E635C:
/* 805E635C  38 E7 00 14 */	addi r7, r7, 0x14
/* 805E6360  42 00 FF 9C */	bdnz lbl_805E62FC
/* 805E6364  39 61 00 30 */	addi r11, r1, 0x30
/* 805E6368  4B AB 4B A1 */	bl func_8009AF08
/* 805E636C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E6370  7C 08 03 A6 */	mtlr r0
/* 805E6374  38 21 00 30 */	addi r1, r1, 0x30
/* 805E6378  4E 80 00 20 */	blr 
