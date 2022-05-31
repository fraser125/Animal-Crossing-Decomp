lbl_803CFE8C:
/* 803CFE8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CFE90  7C 08 02 A6 */	mflr r0
/* 803CFE94  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CFE98  39 61 00 30 */	addi r11, r1, 0x30
/* 803CFE9C  4B CC B0 31 */	bl func_8009AECC
/* 803CFEA0  7C 7B 1B 78 */	mr r27, r3
/* 803CFEA4  7C 9C 23 78 */	mr r28, r4
/* 803CFEA8  7C BD 2B 78 */	mr r29, r5
/* 803CFEAC  7C DE 33 78 */	mr r30, r6
/* 803CFEB0  38 60 00 03 */	li r3, 3
/* 803CFEB4  38 80 00 0F */	li r4, 0xf
/* 803CFEB8  4B FC DF 15 */	bl mEv_get_save_area
/* 803CFEBC  28 03 00 00 */	cmplwi r3, 0
/* 803CFEC0  41 82 00 6C */	beq lbl_803CFF2C
/* 803CFEC4  8B E3 00 00 */	lbz r31, 0(r3)
/* 803CFEC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CFECC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803CFED0  38 61 00 08 */	addi r3, r1, 8
/* 803CFED4  1C 1F 09 88 */	mulli r0, r31, 0x988
/* 803CFED8  7F E5 FB 78 */	mr r5, r31
/* 803CFEDC  3C C4 00 01 */	addis r6, r4, 1
/* 803CFEE0  38 80 00 03 */	li r4, 3
/* 803CFEE4  7C E6 02 14 */	add r7, r6, r0
/* 803CFEE8  38 C0 00 00 */	li r6, 0
/* 803CFEEC  A0 07 74 38 */	lhz r0, 0x7438(r7)
/* 803CFEF0  B0 01 00 08 */	sth r0, 8(r1)
/* 803CFEF4  4B FC FF ED */	bl mEvMN_GetEventNpcName
/* 803CFEF8  A0 61 00 08 */	lhz r3, 8(r1)
/* 803CFEFC  38 A0 00 04 */	li r5, 4
/* 803CFF00  38 C0 00 07 */	li r6, 7
/* 803CFF04  38 00 FF FF */	li r0, -1
/* 803CFF08  B0 7B 00 00 */	sth r3, 0(r27)
/* 803CFF0C  7F 83 07 34 */	extsh r3, r28
/* 803CFF10  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 803CFF14  98 BB 00 02 */	stb r5, 2(r27)
/* 803CFF18  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 803CFF1C  98 DB 00 03 */	stb r6, 3(r27)
/* 803CFF20  9B FB 00 04 */	stb r31, 4(r27)
/* 803CFF24  B0 1B 00 06 */	sth r0, 6(r27)
/* 803CFF28  4B FD 86 B1 */	bl mFI_SetMoveActorBitData_ON
lbl_803CFF2C:
/* 803CFF2C  39 61 00 30 */	addi r11, r1, 0x30
/* 803CFF30  4B CC AF E9 */	bl func_8009AF18
/* 803CFF34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CFF38  7C 08 03 A6 */	mtlr r0
/* 803CFF3C  38 21 00 30 */	addi r1, r1, 0x30
/* 803CFF40  4E 80 00 20 */	blr 
