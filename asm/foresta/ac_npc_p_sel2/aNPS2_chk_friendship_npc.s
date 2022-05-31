lbl_80567FAC:
/* 80567FAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80567FB0  7C 08 02 A6 */	mflr r0
/* 80567FB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80567FB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80567FBC  4B B3 2F 15 */	bl func_8009AED0
/* 80567FC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80567FC4  3B 80 00 00 */	li r28, 0
/* 80567FC8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80567FCC  3B A0 00 00 */	li r29, 0
/* 80567FD0  3C 64 00 02 */	addis r3, r4, 2
/* 80567FD4  3F C4 00 01 */	addis r30, r4, 1
/* 80567FD8  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 80567FDC  3B DE 74 38 */	addi r30, r30, 0x7438
lbl_80567FE0:
/* 80567FE0  7F E3 FB 78 */	mr r3, r31
/* 80567FE4  7F C4 F3 78 */	mr r4, r30
/* 80567FE8  4B E6 64 81 */	bl mNpc_CheckFriendship
/* 80567FEC  2C 03 FF FF */	cmpwi r3, -1
/* 80567FF0  41 82 00 0C */	beq lbl_80567FFC
/* 80567FF4  3B 80 00 01 */	li r28, 1
/* 80567FF8  48 00 00 14 */	b lbl_8056800C
lbl_80567FFC:
/* 80567FFC  3B BD 00 01 */	addi r29, r29, 1
/* 80568000  3B DE 09 88 */	addi r30, r30, 0x988
/* 80568004  2C 1D 00 0F */	cmpwi r29, 0xf
/* 80568008  41 80 FF D8 */	blt lbl_80567FE0
lbl_8056800C:
/* 8056800C  7F 83 E3 78 */	mr r3, r28
/* 80568010  39 61 00 20 */	addi r11, r1, 0x20
/* 80568014  4B B3 2F 09 */	bl func_8009AF1C
/* 80568018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056801C  7C 08 03 A6 */	mtlr r0
/* 80568020  38 21 00 20 */	addi r1, r1, 0x20
/* 80568024  4E 80 00 20 */	blr 
