lbl_803CCEC8:
/* 803CCEC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CCECC  7C 08 02 A6 */	mflr r0
/* 803CCED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CCED4  39 61 00 20 */	addi r11, r1, 0x20
/* 803CCED8  4B CC DF F9 */	bl func_8009AED0
/* 803CCEDC  7C 7C 1B 78 */	mr r28, r3
/* 803CCEE0  7C 9D 23 78 */	mr r29, r4
/* 803CCEE4  38 61 00 08 */	addi r3, r1, 8
/* 803CCEE8  3B C0 00 02 */	li r30, 2
/* 803CCEEC  38 A0 00 00 */	li r5, 0
/* 803CCEF0  4B FF 02 59 */	bl mMC_get_mail_hit_rate
/* 803CCEF4  7C 7F 1B 78 */	mr r31, r3
/* 803CCEF8  7F 83 E3 78 */	mr r3, r28
/* 803CCEFC  7F A4 EB 78 */	mr r4, r29
/* 803CCF00  4B FF FE D5 */	bl mNpc_CheckNormalMail_sub
/* 803CCF04  80 01 00 08 */	lwz r0, 8(r1)
/* 803CCF08  2C 00 00 03 */	cmpwi r0, 3
/* 803CCF0C  40 80 00 28 */	bge lbl_803CCF34
/* 803CCF10  80 1C 00 00 */	lwz r0, 0(r28)
/* 803CCF14  2C 00 00 05 */	cmpwi r0, 5
/* 803CCF18  40 80 00 0C */	bge lbl_803CCF24
/* 803CCF1C  3B C0 00 00 */	li r30, 0
/* 803CCF20  48 00 00 30 */	b lbl_803CCF50
lbl_803CCF24:
/* 803CCF24  2C 03 00 01 */	cmpwi r3, 1
/* 803CCF28  40 82 00 28 */	bne lbl_803CCF50
/* 803CCF2C  3B C0 00 00 */	li r30, 0
/* 803CCF30  48 00 00 20 */	b lbl_803CCF50
lbl_803CCF34:
/* 803CCF34  2C 1F 00 1E */	cmpwi r31, 0x1e
/* 803CCF38  41 80 00 0C */	blt lbl_803CCF44
/* 803CCF3C  3B C0 00 01 */	li r30, 1
/* 803CCF40  48 00 00 10 */	b lbl_803CCF50
lbl_803CCF44:
/* 803CCF44  2C 03 00 01 */	cmpwi r3, 1
/* 803CCF48  40 82 00 08 */	bne lbl_803CCF50
/* 803CCF4C  3B C0 00 00 */	li r30, 0
lbl_803CCF50:
/* 803CCF50  7F C3 F3 78 */	mr r3, r30
/* 803CCF54  39 61 00 20 */	addi r11, r1, 0x20
/* 803CCF58  4B CC DF C5 */	bl func_8009AF1C
/* 803CCF5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CCF60  7C 08 03 A6 */	mtlr r0
/* 803CCF64  38 21 00 20 */	addi r1, r1, 0x20
/* 803CCF68  4E 80 00 20 */	blr 
