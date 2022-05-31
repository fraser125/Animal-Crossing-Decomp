lbl_803F01AC:
/* 803F01AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F01B0  7C 08 02 A6 */	mflr r0
/* 803F01B4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F01B8  54 66 08 3C */	slwi r6, r3, 1
/* 803F01BC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803F01C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F01C4  3C A5 00 02 */	addis r5, r5, 2
/* 803F01C8  38 60 00 00 */	li r3, 0
/* 803F01CC  80 E5 61 3C */	lwz r7, 0x613c(r5)
/* 803F01D0  7C A7 32 14 */	add r5, r7, r6
/* 803F01D4  A0 A5 00 68 */	lhz r5, 0x68(r5)
/* 803F01D8  28 05 00 00 */	cmplwi r5, 0
/* 803F01DC  41 82 00 DC */	beq lbl_803F02B8
/* 803F01E0  80 07 00 88 */	lwz r0, 0x88(r7)
/* 803F01E4  7C 00 34 30 */	srw r0, r0, r6
/* 803F01E8  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 803F01EC  40 82 00 CC */	bne lbl_803F02B8
/* 803F01F0  28 05 25 1E */	cmplwi r5, 0x251e
/* 803F01F4  41 82 00 C4 */	beq lbl_803F02B8
/* 803F01F8  28 05 25 30 */	cmplwi r5, 0x2530
/* 803F01FC  41 82 00 BC */	beq lbl_803F02B8
/* 803F0200  28 05 25 23 */	cmplwi r5, 0x2523
/* 803F0204  41 80 00 0C */	blt lbl_803F0210
/* 803F0208  28 05 25 2F */	cmplwi r5, 0x252f
/* 803F020C  40 81 00 AC */	ble lbl_803F02B8
lbl_803F0210:
/* 803F0210  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 803F0214  2C 00 00 02 */	cmpwi r0, 2
/* 803F0218  40 82 00 9C */	bne lbl_803F02B4
/* 803F021C  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 803F0220  2C 00 00 03 */	cmpwi r0, 3
/* 803F0224  40 82 00 90 */	bne lbl_803F02B4
/* 803F0228  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803F022C  2C 00 00 02 */	cmpwi r0, 2
/* 803F0230  40 82 00 10 */	bne lbl_803F0240
/* 803F0234  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 803F0238  2C 00 00 03 */	cmpwi r0, 3
/* 803F023C  41 82 00 78 */	beq lbl_803F02B4
lbl_803F0240:
/* 803F0240  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803F0244  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803F0248  80 63 00 00 */	lwz r3, 0(r3)
/* 803F024C  4B FE 93 F5 */	bl get_player_actor_withoutCheck
/* 803F0250  7C 67 1B 78 */	mr r7, r3
/* 803F0254  3C 60 80 64 */	lis r3, data_80643204@ha /* 0x80643204@ha */
/* 803F0258  80 A7 00 28 */	lwz r5, 0x28(r7)
/* 803F025C  38 83 32 04 */	addi r4, r3, data_80643204@l /* 0x80643204@l */
/* 803F0260  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 803F0264  38 61 00 14 */	addi r3, r1, 0x14
/* 803F0268  C0 24 00 00 */	lfs f1, 0(r4)
/* 803F026C  38 81 00 08 */	addi r4, r1, 8
/* 803F0270  90 A1 00 08 */	stw r5, 8(r1)
/* 803F0274  38 C0 00 0C */	li r6, 0xc
/* 803F0278  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F027C  80 07 00 30 */	lwz r0, 0x30(r7)
/* 803F0280  90 01 00 10 */	stw r0, 0x10(r1)
/* 803F0284  A8 A7 00 DE */	lha r5, 0xde(r7)
/* 803F0288  4B FA 08 B1 */	bl mCoBG_SearchWaterLimitDistN
/* 803F028C  2C 03 00 00 */	cmpwi r3, 0
/* 803F0290  40 82 00 0C */	bne lbl_803F029C
/* 803F0294  38 60 00 00 */	li r3, 0
/* 803F0298  48 00 00 20 */	b lbl_803F02B8
lbl_803F029C:
/* 803F029C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803F02A0  38 81 00 14 */	addi r4, r1, 0x14
/* 803F02A4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803F02A8  80 63 00 00 */	lwz r3, 0(r3)
/* 803F02AC  38 63 1F 54 */	addi r3, r3, 0x1f54
/* 803F02B0  4B FC AC 0D */	bl xyz_t_move
lbl_803F02B4:
/* 803F02B4  38 60 00 01 */	li r3, 1
lbl_803F02B8:
/* 803F02B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F02BC  7C 08 03 A6 */	mtlr r0
/* 803F02C0  38 21 00 20 */	addi r1, r1, 0x20
/* 803F02C4  4E 80 00 20 */	blr 
