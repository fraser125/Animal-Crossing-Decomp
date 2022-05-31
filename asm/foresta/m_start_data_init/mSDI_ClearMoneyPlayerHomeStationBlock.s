lbl_803EDF68:
/* 803EDF68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EDF6C  7C 08 02 A6 */	mflr r0
/* 803EDF70  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EDF74  39 61 00 30 */	addi r11, r1, 0x30
/* 803EDF78  4B CA CF 45 */	bl func_8009AEBC
/* 803EDF7C  3C 80 80 66 */	lis r4, block_num@ha /* 0x8065DC80@ha */
/* 803EDF80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EDF84  3B 64 DC 80 */	addi r27, r4, block_num@l /* 0x8065DC80@l */
/* 803EDF88  3B E0 00 00 */	li r31, 0
/* 803EDF8C  3B 83 85 38 */	addi r28, r3, common_data@l /* 0x81138538@l */
/* 803EDF90  3B C0 00 00 */	li r30, 0
lbl_803EDF94:
/* 803EDF94  7C 7B F2 14 */	add r3, r27, r30
/* 803EDF98  80 03 00 04 */	lwz r0, 4(r3)
/* 803EDF9C  80 A3 00 00 */	lwz r5, 0(r3)
/* 803EDFA0  1C 80 0A 00 */	mulli r4, r0, 0xa00
/* 803EDFA4  54 A3 48 2C */	slwi r3, r5, 9
/* 803EDFA8  1C 00 00 05 */	mulli r0, r0, 5
/* 803EDFAC  7C 9C 22 14 */	add r4, r28, r4
/* 803EDFB0  7C 64 1A 14 */	add r3, r4, r3
/* 803EDFB4  7C 05 02 14 */	add r0, r5, r0
/* 803EDFB8  3F 43 00 01 */	addis r26, r3, 1
/* 803EDFBC  54 00 28 34 */	slwi r0, r0, 5
/* 803EDFC0  7C 7C 02 14 */	add r3, r28, r0
/* 803EDFC4  37 5A 37 A8 */	addic. r26, r26, 0x37a8
/* 803EDFC8  3F 23 00 02 */	addis r25, r3, 2
/* 803EDFCC  3B 39 0F 1C */	addi r25, r25, 0xf1c
/* 803EDFD0  41 82 00 60 */	beq lbl_803EE030
/* 803EDFD4  3A E0 00 00 */	li r23, 0
lbl_803EDFD8:
/* 803EDFD8  3B 00 00 00 */	li r24, 0
/* 803EDFDC  3B A0 00 00 */	li r29, 0
lbl_803EDFE0:
/* 803EDFE0  A0 7A 00 00 */	lhz r3, 0(r26)
/* 803EDFE4  28 03 21 00 */	cmplwi r3, 0x2100
/* 803EDFE8  41 80 00 2C */	blt lbl_803EE014
/* 803EDFEC  28 03 21 03 */	cmplwi r3, 0x2103
/* 803EDFF0  41 81 00 24 */	bgt lbl_803EE014
/* 803EDFF4  4B FF 08 5D */	bl mPB_keep_item
/* 803EDFF8  28 19 00 00 */	cmplwi r25, 0
/* 803EDFFC  B3 BA 00 00 */	sth r29, 0(r26)
/* 803EE000  41 82 00 14 */	beq lbl_803EE014
/* 803EE004  7F 23 CB 78 */	mr r3, r25
/* 803EE008  7F 04 C3 78 */	mr r4, r24
/* 803EE00C  7E E5 BB 78 */	mr r5, r23
/* 803EE010  4B FB AD FD */	bl mFI_BlockDepositOFF
lbl_803EE014:
/* 803EE014  3B 18 00 01 */	addi r24, r24, 1
/* 803EE018  3B 5A 00 02 */	addi r26, r26, 2
/* 803EE01C  2C 18 00 10 */	cmpwi r24, 0x10
/* 803EE020  41 80 FF C0 */	blt lbl_803EDFE0
/* 803EE024  3A F7 00 01 */	addi r23, r23, 1
/* 803EE028  2C 17 00 10 */	cmpwi r23, 0x10
/* 803EE02C  41 80 FF AC */	blt lbl_803EDFD8
lbl_803EE030:
/* 803EE030  3B FF 00 01 */	addi r31, r31, 1
/* 803EE034  3B DE 00 08 */	addi r30, r30, 8
/* 803EE038  2C 1F 00 02 */	cmpwi r31, 2
/* 803EE03C  41 80 FF 58 */	blt lbl_803EDF94
/* 803EE040  39 61 00 30 */	addi r11, r1, 0x30
/* 803EE044  4B CA CE C5 */	bl func_8009AF08
/* 803EE048  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EE04C  7C 08 03 A6 */	mtlr r0
/* 803EE050  38 21 00 30 */	addi r1, r1, 0x30
/* 803EE054  4E 80 00 20 */	blr 
