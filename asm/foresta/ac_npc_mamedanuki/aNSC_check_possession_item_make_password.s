lbl_8055ACD8:
/* 8055ACD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055ACDC  7C 08 02 A6 */	mflr r0
/* 8055ACE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055ACE4  39 61 00 30 */	addi r11, r1, 0x30
/* 8055ACE8  4B B4 01 D9 */	bl func_8009AEC0
/* 8055ACEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055ACF0  7C 78 1B 78 */	mr r24, r3
/* 8055ACF4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8055ACF8  3B 60 00 00 */	li r27, 0
/* 8055ACFC  3F A3 00 02 */	addis r29, r3, 2
/* 8055AD00  3B 20 00 00 */	li r25, 0
/* 8055AD04  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 8055AD08  3B 40 00 00 */	li r26, 0
/* 8055AD0C  3B E0 00 00 */	li r31, 0
/* 8055AD10  3B C0 00 01 */	li r30, 1
/* 8055AD14  3B 83 00 68 */	addi r28, r3, 0x68
lbl_8055AD18:
/* 8055AD18  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8055AD1C  28 03 00 00 */	cmplwi r3, 0
/* 8055AD20  41 82 00 30 */	beq lbl_8055AD50
/* 8055AD24  80 9D 61 3C */	lwz r4, 0x613c(r29)
/* 8055AD28  80 04 00 88 */	lwz r0, 0x88(r4)
/* 8055AD2C  7C 00 FC 30 */	srw r0, r0, r31
/* 8055AD30  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8055AD34  40 82 00 1C */	bne lbl_8055AD50
/* 8055AD38  4B E6 36 71 */	bl mMpswd_check_present_user
/* 8055AD3C  2C 03 00 01 */	cmpwi r3, 1
/* 8055AD40  40 82 00 10 */	bne lbl_8055AD50
/* 8055AD44  7F C0 D0 30 */	slw r0, r30, r26
/* 8055AD48  3B 20 00 01 */	li r25, 1
/* 8055AD4C  7F 7B 03 78 */	or r27, r27, r0
lbl_8055AD50:
/* 8055AD50  3B 5A 00 01 */	addi r26, r26, 1
/* 8055AD54  3B FF 00 02 */	addi r31, r31, 2
/* 8055AD58  2C 1A 00 0F */	cmpwi r26, 0xf
/* 8055AD5C  3B 9C 00 02 */	addi r28, r28, 2
/* 8055AD60  41 80 FF B8 */	blt lbl_8055AD18
/* 8055AD64  B3 78 09 F6 */	sth r27, 0x9f6(r24)
/* 8055AD68  7F 23 CB 78 */	mr r3, r25
/* 8055AD6C  39 61 00 30 */	addi r11, r1, 0x30
/* 8055AD70  4B B4 01 9D */	bl func_8009AF0C
/* 8055AD74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055AD78  7C 08 03 A6 */	mtlr r0
/* 8055AD7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8055AD80  4E 80 00 20 */	blr 
