lbl_8039AED4:
/* 8039AED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AED8  7C 08 02 A6 */	mflr r0
/* 8039AEDC  38 60 00 01 */	li r3, 1
/* 8039AEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8039AEEC  48 05 85 15 */	bl mTM_check_renew_time
/* 8039AEF0  2C 03 00 01 */	cmpwi r3, 1
/* 8039AEF4  40 82 00 40 */	bne lbl_8039AF34
/* 8039AEF8  3B E0 00 00 */	li r31, 0
lbl_8039AEFC:
/* 8039AEFC  3F DF 20 00 */	addis r30, r31, 0x2000
/* 8039AF00  3B DE 00 0A */	addi r30, r30, 0xa
/* 8039AF04  7F C3 F3 78 */	mr r3, r30
/* 8039AF08  4B FF FB 11 */	bl mEv_CheckEvent
/* 8039AF0C  2C 03 00 01 */	cmpwi r3, 1
/* 8039AF10  40 82 00 18 */	bne lbl_8039AF28
/* 8039AF14  7F C3 F3 78 */	mr r3, r30
/* 8039AF18  4B FF FA B1 */	bl mEv_EventOFF
/* 8039AF1C  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AF20  38 63 00 0E */	addi r3, r3, 0xe
/* 8039AF24  4B FF FA 55 */	bl mEv_EventON
lbl_8039AF28:
/* 8039AF28  3B FF 00 01 */	addi r31, r31, 1
/* 8039AF2C  2C 1F 00 04 */	cmpwi r31, 4
/* 8039AF30  41 80 FF CC */	blt lbl_8039AEFC
lbl_8039AF34:
/* 8039AF34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AF38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AF3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039AF40  7C 08 03 A6 */	mtlr r0
/* 8039AF44  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AF48  4E 80 00 20 */	blr 
