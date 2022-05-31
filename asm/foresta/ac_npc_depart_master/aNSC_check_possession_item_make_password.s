lbl_8054DD70:
/* 8054DD70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054DD74  7C 08 02 A6 */	mflr r0
/* 8054DD78  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054DD7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8054DD80  4B B4 D1 41 */	bl func_8009AEC0
/* 8054DD84  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054DD88  7C 78 1B 78 */	mr r24, r3
/* 8054DD8C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8054DD90  3B 60 00 00 */	li r27, 0
/* 8054DD94  3F A3 00 02 */	addis r29, r3, 2
/* 8054DD98  3B 20 00 00 */	li r25, 0
/* 8054DD9C  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 8054DDA0  3B 40 00 00 */	li r26, 0
/* 8054DDA4  3B E0 00 00 */	li r31, 0
/* 8054DDA8  3B C0 00 01 */	li r30, 1
/* 8054DDAC  3B 83 00 68 */	addi r28, r3, 0x68
lbl_8054DDB0:
/* 8054DDB0  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8054DDB4  28 03 00 00 */	cmplwi r3, 0
/* 8054DDB8  41 82 00 30 */	beq lbl_8054DDE8
/* 8054DDBC  80 9D 61 3C */	lwz r4, 0x613c(r29)
/* 8054DDC0  80 04 00 88 */	lwz r0, 0x88(r4)
/* 8054DDC4  7C 00 FC 30 */	srw r0, r0, r31
/* 8054DDC8  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8054DDCC  40 82 00 1C */	bne lbl_8054DDE8
/* 8054DDD0  4B E7 05 D9 */	bl mMpswd_check_present_user
/* 8054DDD4  2C 03 00 01 */	cmpwi r3, 1
/* 8054DDD8  40 82 00 10 */	bne lbl_8054DDE8
/* 8054DDDC  7F C0 D0 30 */	slw r0, r30, r26
/* 8054DDE0  3B 20 00 01 */	li r25, 1
/* 8054DDE4  7F 7B 03 78 */	or r27, r27, r0
lbl_8054DDE8:
/* 8054DDE8  3B 5A 00 01 */	addi r26, r26, 1
/* 8054DDEC  3B FF 00 02 */	addi r31, r31, 2
/* 8054DDF0  2C 1A 00 0F */	cmpwi r26, 0xf
/* 8054DDF4  3B 9C 00 02 */	addi r28, r28, 2
/* 8054DDF8  41 80 FF B8 */	blt lbl_8054DDB0
/* 8054DDFC  B3 78 09 F6 */	sth r27, 0x9f6(r24)
/* 8054DE00  7F 23 CB 78 */	mr r3, r25
/* 8054DE04  39 61 00 30 */	addi r11, r1, 0x30
/* 8054DE08  4B B4 D1 05 */	bl func_8009AF0C
/* 8054DE0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054DE10  7C 08 03 A6 */	mtlr r0
/* 8054DE14  38 21 00 30 */	addi r1, r1, 0x30
/* 8054DE18  4E 80 00 20 */	blr 
