lbl_8050A1D4:
/* 8050A1D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050A1D8  7C 08 02 A6 */	mflr r0
/* 8050A1DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050A1E0  39 61 00 30 */	addi r11, r1, 0x30
/* 8050A1E4  4B B9 0C D9 */	bl func_8009AEBC
/* 8050A1E8  3C E0 81 1D */	lis r7, l_use_data@ha /* 0x811D3298@ha */
/* 8050A1EC  7C 98 23 78 */	mr r24, r4
/* 8050A1F0  38 07 32 98 */	addi r0, r7, l_use_data@l /* 0x811D3298@l */
/* 8050A1F4  7C 77 1B 78 */	mr r23, r3
/* 8050A1F8  7C B9 2B 78 */	mr r25, r5
/* 8050A1FC  7C DA 33 78 */	mr r26, r6
/* 8050A200  7C 03 03 78 */	mr r3, r0
/* 8050A204  38 80 FF FF */	li r4, -1
/* 8050A208  38 A0 00 46 */	li r5, 0x46
/* 8050A20C  4B FF FC FD */	bl mRF_SetShortData
/* 8050A210  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050A214  3B 80 00 00 */	li r28, 0
/* 8050A218  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050A21C  3F C3 00 02 */	addis r30, r3, 2
lbl_8050A220:
/* 8050A220  3B A0 00 00 */	li r29, 0
lbl_8050A224:
/* 8050A224  7F A3 EB 78 */	mr r3, r29
/* 8050A228  7F 84 E3 78 */	mr r4, r28
/* 8050A22C  4B FF EC 11 */	bl mRF_D2ToD1
/* 8050A230  7C 7F 1B 78 */	mr r31, r3
/* 8050A234  7F A3 EB 78 */	mr r3, r29
/* 8050A238  7F 84 E3 78 */	mr r4, r28
/* 8050A23C  4B FF EC 01 */	bl mRF_D2ToD1
/* 8050A240  7F 7A 18 AE */	lbzx r27, r26, r3
/* 8050A244  28 1B 00 65 */	cmplwi r27, 0x65
/* 8050A248  40 82 00 48 */	bne lbl_8050A290
/* 8050A24C  7F A3 EB 78 */	mr r3, r29
/* 8050A250  38 9C FF FF */	addi r4, r28, -1
/* 8050A254  4B FF EB E9 */	bl mRF_D2ToD1
/* 8050A258  54 60 08 3C */	slwi r0, r3, 1
/* 8050A25C  7C 17 02 2E */	lhzx r0, r23, r0
/* 8050A260  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 8050A264  1C 00 00 06 */	mulli r0, r0, 6
/* 8050A268  7C 78 02 2E */	lhzx r3, r24, r0
/* 8050A26C  4B FF FE 59 */	bl mRF_GetExceptionalSeaBgDownBgName
/* 8050A270  7F 04 C3 78 */	mr r4, r24
/* 8050A274  7F 25 CB 78 */	mr r5, r25
/* 8050A278  4B FF FE 85 */	bl mRF_BgName2RandomConbiNo
/* 8050A27C  57 E4 08 3C */	slwi r4, r31, 1
/* 8050A280  7C 17 22 2E */	lhzx r0, r23, r4
/* 8050A284  50 60 14 3A */	rlwimi r0, r3, 2, 0x10, 0x1d
/* 8050A288  7C 17 23 2E */	sthx r0, r23, r4
/* 8050A28C  48 00 01 50 */	b lbl_8050A3DC
lbl_8050A290:
/* 8050A290  7F 03 C3 78 */	mr r3, r24
/* 8050A294  7F 24 CB 78 */	mr r4, r25
/* 8050A298  7F 65 DB 78 */	mr r5, r27
/* 8050A29C  38 C0 00 00 */	li r6, 0
/* 8050A2A0  4B FF FC C1 */	bl mRF_TypeCombCount
/* 8050A2A4  2C 03 00 00 */	cmpwi r3, 0
/* 8050A2A8  41 82 00 C4 */	beq lbl_8050A36C
/* 8050A2AC  4B FF EB 35 */	bl mRF_GetRandom
/* 8050A2B0  7C 60 1B 78 */	mr r0, r3
/* 8050A2B4  7F 03 C3 78 */	mr r3, r24
/* 8050A2B8  7C 06 03 78 */	mr r6, r0
/* 8050A2BC  7F 24 CB 78 */	mr r4, r25
/* 8050A2C0  7F 65 DB 78 */	mr r5, r27
/* 8050A2C4  38 E0 00 00 */	li r7, 0
/* 8050A2C8  4B FF FD 39 */	bl mRF_IndexInType2BlockNo
/* 8050A2CC  7C 60 07 34 */	extsh r0, r3
/* 8050A2D0  2C 00 FF FF */	cmpwi r0, -1
/* 8050A2D4  41 82 00 24 */	beq lbl_8050A2F8
/* 8050A2D8  57 E6 08 3C */	slwi r6, r31, 1
/* 8050A2DC  3C 80 81 1D */	lis r4, l_use_data@ha /* 0x811D3298@ha */
/* 8050A2E0  7C 17 32 2E */	lhzx r0, r23, r6
/* 8050A2E4  50 60 14 3A */	rlwimi r0, r3, 2, 0x10, 0x1d
/* 8050A2E8  38 84 32 98 */	addi r4, r4, l_use_data@l /* 0x811D3298@l */
/* 8050A2EC  7C 17 33 2E */	sthx r0, r23, r6
/* 8050A2F0  7C 64 33 2E */	sthx r3, r4, r6
/* 8050A2F4  48 00 00 E8 */	b lbl_8050A3DC
lbl_8050A2F8:
/* 8050A2F8  7F 03 C3 78 */	mr r3, r24
/* 8050A2FC  7F 24 CB 78 */	mr r4, r25
/* 8050A300  7F 65 DB 78 */	mr r5, r27
/* 8050A304  38 C0 00 01 */	li r6, 1
/* 8050A308  4B FF FC 59 */	bl mRF_TypeCombCount
/* 8050A30C  4B FF EA D5 */	bl mRF_GetRandom
/* 8050A310  7C 66 1B 78 */	mr r6, r3
/* 8050A314  7F 03 C3 78 */	mr r3, r24
/* 8050A318  7F 24 CB 78 */	mr r4, r25
/* 8050A31C  7F 65 DB 78 */	mr r5, r27
/* 8050A320  38 E0 00 01 */	li r7, 1
/* 8050A324  4B FF FC DD */	bl mRF_IndexInType2BlockNo
/* 8050A328  7C 60 07 34 */	extsh r0, r3
/* 8050A32C  2C 00 FF FF */	cmpwi r0, -1
/* 8050A330  41 82 00 24 */	beq lbl_8050A354
/* 8050A334  57 E6 08 3C */	slwi r6, r31, 1
/* 8050A338  3C 80 81 1D */	lis r4, l_use_data@ha /* 0x811D3298@ha */
/* 8050A33C  7C 17 32 2E */	lhzx r0, r23, r6
/* 8050A340  50 60 14 3A */	rlwimi r0, r3, 2, 0x10, 0x1d
/* 8050A344  38 84 32 98 */	addi r4, r4, l_use_data@l /* 0x811D3298@l */
/* 8050A348  7C 17 33 2E */	sthx r0, r23, r6
/* 8050A34C  7C 64 33 2E */	sthx r3, r4, r6
/* 8050A350  48 00 00 8C */	b lbl_8050A3DC
lbl_8050A354:
/* 8050A354  57 E3 08 3C */	slwi r3, r31, 1
/* 8050A358  38 80 00 A1 */	li r4, 0xa1
/* 8050A35C  7C 17 1A 2E */	lhzx r0, r23, r3
/* 8050A360  50 80 14 3A */	rlwimi r0, r4, 2, 0x10, 0x1d
/* 8050A364  7C 17 1B 2E */	sthx r0, r23, r3
/* 8050A368  48 00 00 74 */	b lbl_8050A3DC
lbl_8050A36C:
/* 8050A36C  7F 03 C3 78 */	mr r3, r24
/* 8050A370  7F 24 CB 78 */	mr r4, r25
/* 8050A374  7F 65 DB 78 */	mr r5, r27
/* 8050A378  38 C0 00 01 */	li r6, 1
/* 8050A37C  4B FF FB E5 */	bl mRF_TypeCombCount
/* 8050A380  4B FF EA 61 */	bl mRF_GetRandom
/* 8050A384  7C 66 1B 78 */	mr r6, r3
/* 8050A388  7F 03 C3 78 */	mr r3, r24
/* 8050A38C  7F 24 CB 78 */	mr r4, r25
/* 8050A390  7F 65 DB 78 */	mr r5, r27
/* 8050A394  38 E0 00 01 */	li r7, 1
/* 8050A398  4B FF FC 69 */	bl mRF_IndexInType2BlockNo
/* 8050A39C  7C 60 07 34 */	extsh r0, r3
/* 8050A3A0  2C 00 FF FF */	cmpwi r0, -1
/* 8050A3A4  41 82 00 24 */	beq lbl_8050A3C8
/* 8050A3A8  57 E6 08 3C */	slwi r6, r31, 1
/* 8050A3AC  3C 80 81 1D */	lis r4, l_use_data@ha /* 0x811D3298@ha */
/* 8050A3B0  7C 17 32 2E */	lhzx r0, r23, r6
/* 8050A3B4  50 60 14 3A */	rlwimi r0, r3, 2, 0x10, 0x1d
/* 8050A3B8  38 84 32 98 */	addi r4, r4, l_use_data@l /* 0x811D3298@l */
/* 8050A3BC  7C 17 33 2E */	sthx r0, r23, r6
/* 8050A3C0  7C 64 33 2E */	sthx r3, r4, r6
/* 8050A3C4  48 00 00 18 */	b lbl_8050A3DC
lbl_8050A3C8:
/* 8050A3C8  57 E3 08 3C */	slwi r3, r31, 1
/* 8050A3CC  38 80 00 A1 */	li r4, 0xa1
/* 8050A3D0  7C 17 1A 2E */	lhzx r0, r23, r3
/* 8050A3D4  50 80 14 3A */	rlwimi r0, r4, 2, 0x10, 0x1d
/* 8050A3D8  7C 17 1B 2E */	sthx r0, r23, r3
lbl_8050A3DC:
/* 8050A3DC  28 1B 00 63 */	cmplwi r27, 0x63
/* 8050A3E0  41 82 00 0C */	beq lbl_8050A3EC
/* 8050A3E4  28 1B 00 62 */	cmplwi r27, 0x62
/* 8050A3E8  40 82 00 34 */	bne lbl_8050A41C
lbl_8050A3EC:
/* 8050A3EC  57 E0 08 3C */	slwi r0, r31, 1
/* 8050A3F0  28 1B 00 62 */	cmplwi r27, 0x62
/* 8050A3F4  7C 17 02 2E */	lhzx r0, r23, r0
/* 8050A3F8  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 8050A3FC  1C 00 00 06 */	mulli r0, r0, 6
/* 8050A400  7C 78 02 2E */	lhzx r3, r24, r0
/* 8050A404  40 82 00 10 */	bne lbl_8050A414
/* 8050A408  38 03 FF 8C */	addi r0, r3, -116
/* 8050A40C  98 1E 3E 08 */	stb r0, 0x3e08(r30)
/* 8050A410  48 00 00 0C */	b lbl_8050A41C
lbl_8050A414:
/* 8050A414  38 03 FF 90 */	addi r0, r3, -112
/* 8050A418  98 1E 3E 09 */	stb r0, 0x3e09(r30)
lbl_8050A41C:
/* 8050A41C  3B BD 00 01 */	addi r29, r29, 1
/* 8050A420  2C 1D 00 07 */	cmpwi r29, 7
/* 8050A424  41 80 FE 00 */	blt lbl_8050A224
/* 8050A428  3B 9C 00 01 */	addi r28, r28, 1
/* 8050A42C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 8050A430  41 80 FD F0 */	blt lbl_8050A220
/* 8050A434  39 61 00 30 */	addi r11, r1, 0x30
/* 8050A438  4B B9 0A D1 */	bl func_8009AF08
/* 8050A43C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050A440  7C 08 03 A6 */	mtlr r0
/* 8050A444  38 21 00 30 */	addi r1, r1, 0x30
/* 8050A448  4E 80 00 20 */	blr 
