lbl_80485AD4:
/* 80485AD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80485AD8  7C 08 02 A6 */	mflr r0
/* 80485ADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80485AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80485AE4  4B C1 53 E5 */	bl func_8009AEC8
/* 80485AE8  7C BC 2B 78 */	mr r28, r5
/* 80485AEC  3C A0 80 69 */	lis r5, data_8068A420@ha /* 0x8068A420@ha */
/* 80485AF0  88 1C 00 00 */	lbz r0, 0(r28)
/* 80485AF4  7C 7B 1B 78 */	mr r27, r3
/* 80485AF8  7C 9E 23 78 */	mr r30, r4
/* 80485AFC  7C DD 33 78 */	mr r29, r6
/* 80485B00  54 1F D7 BE */	rlwinm r31, r0, 0x1a, 0x1e, 0x1f
/* 80485B04  3B 45 A4 20 */	addi r26, r5, data_8068A420@l /* 0x8068A420@l */
/* 80485B08  28 1F 00 03 */	cmplwi r31, 3
/* 80485B0C  40 80 01 50 */	bge lbl_80485C5C
/* 80485B10  80 9E 00 00 */	lwz r4, 0(r30)
/* 80485B14  4B FF FF 6D */	bl aQMgr_actor_free_regist
/* 80485B18  90 7E 00 00 */	stw r3, 0(r30)
/* 80485B1C  80 BE 00 00 */	lwz r5, 0(r30)
/* 80485B20  2C 05 FF FF */	cmpwi r5, -1
/* 80485B24  41 82 01 38 */	beq lbl_80485C5C
/* 80485B28  88 9C 00 00 */	lbz r4, 0(r28)
/* 80485B2C  57 E0 10 3A */	slwi r0, r31, 2
/* 80485B30  38 7A 07 D0 */	addi r3, r26, 0x7d0
/* 80485B34  54 86 06 BF */	clrlwi. r6, r4, 0x1a
/* 80485B38  7C 03 00 2E */	lwzx r0, r3, r0
/* 80485B3C  41 80 01 20 */	blt lbl_80485C5C
/* 80485B40  7C 06 00 00 */	cmpw r6, r0
/* 80485B44  40 80 01 18 */	bge lbl_80485C5C
/* 80485B48  1C 65 00 34 */	mulli r3, r5, 0x34
/* 80485B4C  28 1F 00 02 */	cmplwi r31, 2
/* 80485B50  3B C3 02 14 */	addi r30, r3, 0x214
/* 80485B54  7F DB F2 14 */	add r30, r27, r30
/* 80485B58  40 82 00 4C */	bne lbl_80485BA4
/* 80485B5C  38 1C 00 0E */	addi r0, r28, 0xe
/* 80485B60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80485B64  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80485B68  54 C6 10 3A */	slwi r6, r6, 2
/* 80485B6C  38 7A 07 98 */	addi r3, r26, 0x798
/* 80485B70  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80485B74  7C 03 30 2E */	lwzx r0, r3, r6
/* 80485B78  1C BD 09 88 */	mulli r5, r29, 0x988
/* 80485B7C  38 7A 07 B4 */	addi r3, r26, 0x7b4
/* 80485B80  90 1E 00 00 */	stw r0, 0(r30)
/* 80485B84  7C 84 2A 14 */	add r4, r4, r5
/* 80485B88  7C 03 30 2E */	lwzx r0, r3, r6
/* 80485B8C  3C 64 00 01 */	addis r3, r4, 1
/* 80485B90  38 63 74 38 */	addi r3, r3, 0x7438
/* 80485B94  90 1E 00 04 */	stw r0, 4(r30)
/* 80485B98  7C 64 1B 78 */	mr r4, r3
/* 80485B9C  7C 7A 1B 78 */	mr r26, r3
/* 80485BA0  48 00 00 38 */	b lbl_80485BD8
lbl_80485BA4:
/* 80485BA4  28 1F 00 01 */	cmplwi r31, 1
/* 80485BA8  40 82 00 14 */	bne lbl_80485BBC
/* 80485BAC  54 C0 10 3A */	slwi r0, r6, 2
/* 80485BB0  38 7A 07 5C */	addi r3, r26, 0x75c
/* 80485BB4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80485BB8  90 1E 00 00 */	stw r0, 0(r30)
lbl_80485BBC:
/* 80485BBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80485BC0  38 9C 00 1A */	addi r4, r28, 0x1a
/* 80485BC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80485BC8  3B 5C 00 0C */	addi r26, r28, 0xc
/* 80485BCC  3C 63 00 02 */	addis r3, r3, 2
/* 80485BD0  80 03 61 3C */	lwz r0, 0x613c(r3)
/* 80485BD4  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_80485BD8:
/* 80485BD8  38 7E 00 10 */	addi r3, r30, 0x10
/* 80485BDC  4B F4 58 35 */	bl mNpc_CopyAnimalPersonalID
/* 80485BE0  7F 44 D3 78 */	mr r4, r26
/* 80485BE4  38 7E 00 1E */	addi r3, r30, 0x1e
/* 80485BE8  4B F4 58 29 */	bl mNpc_CopyAnimalPersonalID
/* 80485BEC  2C 1F 00 01 */	cmpwi r31, 1
/* 80485BF0  93 9E 00 08 */	stw r28, 8(r30)
/* 80485BF4  41 82 00 44 */	beq lbl_80485C38
/* 80485BF8  40 80 00 10 */	bge lbl_80485C08
/* 80485BFC  2C 1F 00 00 */	cmpwi r31, 0
/* 80485C00  40 80 00 14 */	bge lbl_80485C14
/* 80485C04  48 00 00 48 */	b lbl_80485C4C
lbl_80485C08:
/* 80485C08  2C 1F 00 03 */	cmpwi r31, 3
/* 80485C0C  40 80 00 40 */	bge lbl_80485C4C
/* 80485C10  48 00 00 34 */	b lbl_80485C44
lbl_80485C14:
/* 80485C14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80485C18  57 A0 08 3C */	slwi r0, r29, 1
/* 80485C1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80485C20  3C 63 00 02 */	addis r3, r3, 2
/* 80485C24  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80485C28  7C 63 02 14 */	add r3, r3, r0
/* 80485C2C  A0 03 00 68 */	lhz r0, 0x68(r3)
/* 80485C30  B0 1E 00 2C */	sth r0, 0x2c(r30)
/* 80485C34  48 00 00 18 */	b lbl_80485C4C
lbl_80485C38:
/* 80485C38  A0 1C 00 28 */	lhz r0, 0x28(r28)
/* 80485C3C  B0 1E 00 2C */	sth r0, 0x2c(r30)
/* 80485C40  48 00 00 0C */	b lbl_80485C4C
lbl_80485C44:
/* 80485C44  A0 1C 00 0C */	lhz r0, 0xc(r28)
/* 80485C48  B0 1E 00 2C */	sth r0, 0x2c(r30)
lbl_80485C4C:
/* 80485C4C  93 BE 00 30 */	stw r29, 0x30(r30)
/* 80485C50  80 7B 09 34 */	lwz r3, 0x934(r27)
/* 80485C54  38 03 00 01 */	addi r0, r3, 1
/* 80485C58  90 1B 09 34 */	stw r0, 0x934(r27)
lbl_80485C5C:
/* 80485C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80485C60  4B C1 52 B5 */	bl func_8009AF14
/* 80485C64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80485C68  7C 08 03 A6 */	mtlr r0
/* 80485C6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80485C70  4E 80 00 20 */	blr 
