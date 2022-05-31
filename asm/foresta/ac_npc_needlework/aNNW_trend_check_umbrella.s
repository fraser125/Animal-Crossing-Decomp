lbl_80561B0C:
/* 80561B0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80561B10  7C 08 02 A6 */	mflr r0
/* 80561B14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80561B18  39 61 00 30 */	addi r11, r1, 0x30
/* 80561B1C  4B B3 93 A9 */	bl func_8009AEC4
/* 80561B20  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80561B24  54 64 07 BE */	clrlwi r4, r3, 0x1e
/* 80561B28  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80561B2C  3B C3 00 20 */	addi r30, r3, 0x20
/* 80561B30  3F 85 00 01 */	addis r28, r5, 1
/* 80561B34  3B A4 00 20 */	addi r29, r4, 0x20
/* 80561B38  3B 40 00 00 */	li r26, 0
/* 80561B3C  3B E0 00 00 */	li r31, 0
/* 80561B40  3B 20 00 00 */	li r25, 0
/* 80561B44  3B 9C 74 38 */	addi r28, r28, 0x7438
lbl_80561B48:
/* 80561B48  7F 7C FA 14 */	add r27, r28, r31
/* 80561B4C  7F 63 DB 78 */	mr r3, r27
/* 80561B50  4B E6 98 8D */	bl mNpc_CheckFreeAnimalPersonalID
/* 80561B54  2C 03 00 00 */	cmpwi r3, 0
/* 80561B58  40 82 00 1C */	bne lbl_80561B74
/* 80561B5C  88 1B 08 EC */	lbz r0, 0x8ec(r27)
/* 80561B60  7C 00 F0 00 */	cmpw r0, r30
/* 80561B64  41 82 00 0C */	beq lbl_80561B70
/* 80561B68  7C 00 E8 00 */	cmpw r0, r29
/* 80561B6C  40 82 00 08 */	bne lbl_80561B74
lbl_80561B70:
/* 80561B70  3B 39 00 01 */	addi r25, r25, 1
lbl_80561B74:
/* 80561B74  3B 5A 00 01 */	addi r26, r26, 1
/* 80561B78  3B FF 09 88 */	addi r31, r31, 0x988
/* 80561B7C  2C 1A 00 0F */	cmpwi r26, 0xf
/* 80561B80  41 80 FF C8 */	blt lbl_80561B48
/* 80561B84  7F 23 CB 78 */	mr r3, r25
/* 80561B88  39 61 00 30 */	addi r11, r1, 0x30
/* 80561B8C  4B B3 93 85 */	bl func_8009AF10
/* 80561B90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80561B94  7C 08 03 A6 */	mtlr r0
/* 80561B98  38 21 00 30 */	addi r1, r1, 0x30
/* 80561B9C  4E 80 00 20 */	blr 
