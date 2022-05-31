lbl_803D48EC:
/* 803D48EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D48F0  7C 08 02 A6 */	mflr r0
/* 803D48F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D48F8  39 61 00 20 */	addi r11, r1, 0x20
/* 803D48FC  4B CC 65 D5 */	bl func_8009AED0
/* 803D4900  7C 7C 1B 79 */	or. r28, r3, r3
/* 803D4904  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D4908  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D490C  3B C0 00 00 */	li r30, 0
/* 803D4910  3F E3 00 02 */	addis r31, r3, 2
/* 803D4914  3B FF 34 40 */	addi r31, r31, 0x3440
/* 803D4918  41 82 00 A0 */	beq lbl_803D49B8
/* 803D491C  3B A0 00 00 */	li r29, 0
lbl_803D4920:
/* 803D4920  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803D4924  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D4928  2C 00 00 01 */	cmpwi r0, 1
/* 803D492C  41 82 00 0C */	beq lbl_803D4938
/* 803D4930  2C 00 00 03 */	cmpwi r0, 3
/* 803D4934  40 82 00 28 */	bne lbl_803D495C
lbl_803D4938:
/* 803D4938  7F C3 F3 78 */	mr r3, r30
/* 803D493C  4B FF FD 01 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D4940  2C 03 FF FF */	cmpwi r3, -1
/* 803D4944  40 82 00 10 */	bne lbl_803D4954
/* 803D4948  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803D494C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803D4950  B0 1C 00 00 */	sth r0, 0(r28)
lbl_803D4954:
/* 803D4954  3B DE 00 01 */	addi r30, r30, 1
/* 803D4958  48 00 00 48 */	b lbl_803D49A0
lbl_803D495C:
/* 803D495C  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D4960  41 80 00 40 */	blt lbl_803D49A0
/* 803D4964  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D4968  41 81 00 38 */	bgt lbl_803D49A0
/* 803D496C  7F C3 F3 78 */	mr r3, r30
/* 803D4970  4B FF FC CD */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D4974  2C 03 FF FF */	cmpwi r3, -1
/* 803D4978  40 82 00 14 */	bne lbl_803D498C
/* 803D497C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803D4980  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803D4984  B0 1C 00 00 */	sth r0, 0(r28)
/* 803D4988  48 00 00 14 */	b lbl_803D499C
lbl_803D498C:
/* 803D498C  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803D4990  7F E4 FB 78 */	mr r4, r31
/* 803D4994  4B FF FC 4D */	bl mNpc_getNormalFtr
/* 803D4998  B0 7C 00 00 */	sth r3, 0(r28)
lbl_803D499C:
/* 803D499C  3B DE 00 01 */	addi r30, r30, 1
lbl_803D49A0:
/* 803D49A0  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803D49A4  40 80 00 14 */	bge lbl_803D49B8
/* 803D49A8  3B BD 00 01 */	addi r29, r29, 1
/* 803D49AC  3B 9C 00 02 */	addi r28, r28, 2
/* 803D49B0  2C 1D 01 00 */	cmpwi r29, 0x100
/* 803D49B4  41 80 FF 6C */	blt lbl_803D4920
lbl_803D49B8:
/* 803D49B8  39 61 00 20 */	addi r11, r1, 0x20
/* 803D49BC  4B CC 65 61 */	bl func_8009AF1C
/* 803D49C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D49C4  7C 08 03 A6 */	mtlr r0
/* 803D49C8  38 21 00 20 */	addi r1, r1, 0x20
/* 803D49CC  4E 80 00 20 */	blr 
