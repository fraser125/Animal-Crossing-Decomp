lbl_80400A94:
/* 80400A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400A98  7C 08 02 A6 */	mflr r0
/* 80400A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80400AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80400AA4  4B C9 A4 25 */	bl func_8009AEC8
/* 80400AA8  7C 7A 1B 78 */	mr r26, r3
/* 80400AAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80400AB0  83 DA 00 00 */	lwz r30, 0(r26)
/* 80400AB4  7C 9D 23 78 */	mr r29, r4
/* 80400AB8  28 03 00 00 */	cmplwi r3, 0
/* 80400ABC  41 82 01 F0 */	beq lbl_80400CAC
/* 80400AC0  2C 1E FF FF */	cmpwi r30, -1
/* 80400AC4  41 82 01 E8 */	beq lbl_80400CAC
/* 80400AC8  80 9A 00 08 */	lwz r4, 8(r26)
/* 80400ACC  4B C5 C5 9D */	bl bzero
/* 80400AD0  1C 7E 00 94 */	mulli r3, r30, 0x94
/* 80400AD4  38 00 00 00 */	li r0, 0
/* 80400AD8  3B 60 00 00 */	li r27, 0
/* 80400ADC  3B E3 00 54 */	addi r31, r3, 0x54
/* 80400AE0  7F FA FA 14 */	add r31, r26, r31
/* 80400AE4  90 1F 00 8C */	stw r0, 0x8c(r31)
lbl_80400AE8:
/* 80400AE8  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 80400AEC  7F C5 F3 78 */	mr r5, r30
/* 80400AF0  38 9B 00 01 */	addi r4, r27, 1
/* 80400AF4  38 DF 00 74 */	addi r6, r31, 0x74
/* 80400AF8  4B FF 9E C9 */	bl mCD_load_file
/* 80400AFC  2C 03 00 01 */	cmpwi r3, 1
/* 80400B00  40 82 00 BC */	bne lbl_80400BBC
/* 80400B04  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 80400B08  80 9A 00 08 */	lwz r4, 8(r26)
/* 80400B0C  4B FA B9 F1 */	bl mFRm_ReturnCheckSum
/* 80400B10  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80400B14  83 9A 00 0C */	lwz r28, 0xc(r26)
/* 80400B18  40 82 00 94 */	bne lbl_80400BAC
/* 80400B1C  3C 7C 00 01 */	addis r3, r28, 1
/* 80400B20  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 80400B24  4B FB 2C D1 */	bl mLd_CheckId
/* 80400B28  2C 03 00 01 */	cmpwi r3, 1
/* 80400B2C  40 82 00 70 */	bne lbl_80400B9C
/* 80400B30  3C 7C 00 01 */	addis r3, r28, 1
/* 80400B34  A0 83 91 2A */	lhz r4, -0x6ed6(r3)
/* 80400B38  38 63 91 20 */	addi r3, r3, -28384
/* 80400B3C  4B FB 2F FD */	bl mLd_CheckThisLand
/* 80400B40  2C 03 00 00 */	cmpwi r3, 0
/* 80400B44  40 82 00 48 */	bne lbl_80400B8C
/* 80400B48  3C 60 81 17 */	lis r3, l_mcd_keep_startCond@ha /* 0x81171614@ha */
/* 80400B4C  80 03 16 14 */	lwz r0, l_mcd_keep_startCond@l(r3)  /* 0x81171614@l */
/* 80400B50  2C 00 00 03 */	cmpwi r0, 3
/* 80400B54  40 82 00 20 */	bne lbl_80400B74
/* 80400B58  4B FB 2F B1 */	bl mLd_PlayerManKindCheck
/* 80400B5C  2C 03 00 00 */	cmpwi r3, 0
/* 80400B60  41 82 00 14 */	beq lbl_80400B74
/* 80400B64  38 00 00 13 */	li r0, 0x13
/* 80400B68  38 60 FF FF */	li r3, -1
/* 80400B6C  90 1D 00 04 */	stw r0, 4(r29)
/* 80400B70  48 00 00 68 */	b lbl_80400BD8
lbl_80400B74:
/* 80400B74  38 60 00 01 */	li r3, 1
/* 80400B78  38 00 00 05 */	li r0, 5
/* 80400B7C  90 7D 00 04 */	stw r3, 4(r29)
/* 80400B80  38 60 00 01 */	li r3, 1
/* 80400B84  90 1D 00 00 */	stw r0, 0(r29)
/* 80400B88  48 00 00 50 */	b lbl_80400BD8
lbl_80400B8C:
/* 80400B8C  38 00 00 0C */	li r0, 0xc
/* 80400B90  38 60 FF FF */	li r3, -1
/* 80400B94  90 1D 00 04 */	stw r0, 4(r29)
/* 80400B98  48 00 00 34 */	b lbl_80400BCC
lbl_80400B9C:
/* 80400B9C  38 00 00 11 */	li r0, 0x11
/* 80400BA0  38 60 FF FF */	li r3, -1
/* 80400BA4  90 1D 00 04 */	stw r0, 4(r29)
/* 80400BA8  48 00 00 24 */	b lbl_80400BCC
lbl_80400BAC:
/* 80400BAC  38 00 00 11 */	li r0, 0x11
/* 80400BB0  38 60 FF FF */	li r3, -1
/* 80400BB4  90 1D 00 04 */	stw r0, 4(r29)
/* 80400BB8  48 00 00 14 */	b lbl_80400BCC
lbl_80400BBC:
/* 80400BBC  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 80400BC0  38 60 FF FF */	li r3, -1
/* 80400BC4  38 04 00 01 */	addi r0, r4, 1
/* 80400BC8  90 1F 00 8C */	stw r0, 0x8c(r31)
lbl_80400BCC:
/* 80400BCC  3B 7B 00 01 */	addi r27, r27, 1
/* 80400BD0  2C 1B 00 02 */	cmpwi r27, 2
/* 80400BD4  41 80 FF 14 */	blt lbl_80400AE8
lbl_80400BD8:
/* 80400BD8  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 80400BDC  2C 00 00 02 */	cmpwi r0, 2
/* 80400BE0  40 82 00 D8 */	bne lbl_80400CB8
/* 80400BE4  7F C4 F3 78 */	mr r4, r30
/* 80400BE8  38 60 20 00 */	li r3, 0x2000
/* 80400BEC  4B FF 6D 41 */	bl mCD_check_sector_size
/* 80400BF0  2C 03 00 00 */	cmpwi r3, 0
/* 80400BF4  40 82 00 14 */	bne lbl_80400C08
/* 80400BF8  38 00 00 06 */	li r0, 6
/* 80400BFC  38 60 FF FF */	li r3, -1
/* 80400C00  90 1D 00 04 */	stw r0, 4(r29)
/* 80400C04  48 00 00 B4 */	b lbl_80400CB8
lbl_80400C08:
/* 80400C08  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80400C0C  38 03 00 0D */	addi r0, r3, 0xd
/* 80400C10  28 00 00 0B */	cmplwi r0, 0xb
/* 80400C14  41 81 00 5C */	bgt lbl_80400C70
/* 80400C18  3C 60 80 66 */	lis r3, lit_4041@ha /* 0x8065EA80@ha */
/* 80400C1C  54 00 10 3A */	slwi r0, r0, 2
/* 80400C20  38 63 EA 80 */	addi r3, r3, lit_4041@l /* 0x8065EA80@l */
/* 80400C24  7C 03 00 2E */	lwzx r0, r3, r0
/* 80400C28  7C 09 03 A6 */	mtctr r0
/* 80400C2C  4E 80 04 20 */	bctr 
lbl_80400C30:
/* 80400C30  38 00 00 15 */	li r0, 0x15
/* 80400C34  38 60 FF FF */	li r3, -1
/* 80400C38  90 1D 00 04 */	stw r0, 4(r29)
/* 80400C3C  48 00 00 7C */	b lbl_80400CB8
lbl_80400C40:
/* 80400C40  38 00 00 17 */	li r0, 0x17
/* 80400C44  38 60 FF FF */	li r3, -1
/* 80400C48  90 1D 00 04 */	stw r0, 4(r29)
/* 80400C4C  48 00 00 6C */	b lbl_80400CB8
lbl_80400C50:
/* 80400C50  38 00 00 03 */	li r0, 3
/* 80400C54  38 60 FF FF */	li r3, -1
/* 80400C58  90 1D 00 04 */	stw r0, 4(r29)
/* 80400C5C  48 00 00 5C */	b lbl_80400CB8
lbl_80400C60:
/* 80400C60  38 00 00 04 */	li r0, 4
/* 80400C64  38 60 FF FF */	li r3, -1
/* 80400C68  90 1D 00 04 */	stw r0, 4(r29)
/* 80400C6C  48 00 00 4C */	b lbl_80400CB8
lbl_80400C70:
/* 80400C70  4B FB 2E 99 */	bl mLd_PlayerManKindCheck
/* 80400C74  2C 03 00 00 */	cmpwi r3, 0
/* 80400C78  41 82 00 24 */	beq lbl_80400C9C
/* 80400C7C  3C 60 81 17 */	lis r3, l_mcd_keep_startCond@ha /* 0x81171614@ha */
/* 80400C80  80 03 16 14 */	lwz r0, l_mcd_keep_startCond@l(r3)  /* 0x81171614@l */
/* 80400C84  2C 00 00 04 */	cmpwi r0, 4
/* 80400C88  41 82 00 14 */	beq lbl_80400C9C
/* 80400C8C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80400C90  38 03 00 01 */	addi r0, r3, 1
/* 80400C94  90 1D 00 00 */	stw r0, 0(r29)
/* 80400C98  48 00 00 0C */	b lbl_80400CA4
lbl_80400C9C:
/* 80400C9C  38 00 00 04 */	li r0, 4
/* 80400CA0  90 1D 00 00 */	stw r0, 0(r29)
lbl_80400CA4:
/* 80400CA4  38 60 00 01 */	li r3, 1
/* 80400CA8  48 00 00 10 */	b lbl_80400CB8
lbl_80400CAC:
/* 80400CAC  38 00 00 17 */	li r0, 0x17
/* 80400CB0  38 60 FF FF */	li r3, -1
/* 80400CB4  90 1D 00 04 */	stw r0, 4(r29)
lbl_80400CB8:
/* 80400CB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80400CBC  4B C9 A2 59 */	bl func_8009AF14
/* 80400CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80400CC4  7C 08 03 A6 */	mtlr r0
/* 80400CC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80400CCC  4E 80 00 20 */	blr 
