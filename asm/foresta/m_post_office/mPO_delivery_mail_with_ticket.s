lbl_803DF40C:
/* 803DF40C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DF410  7C 08 02 A6 */	mflr r0
/* 803DF414  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DF418  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF41C  4B CB BA B1 */	bl func_8009AECC
/* 803DF420  1C A4 24 40 */	mulli r5, r4, 0x2440
/* 803DF424  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DF428  7C 7B 1B 78 */	mr r27, r3
/* 803DF42C  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803DF430  7C 60 2A 14 */	add r3, r0, r5
/* 803DF434  3B A3 00 20 */	addi r29, r3, 0x20
/* 803DF438  88 03 10 A6 */	lbz r0, 0x10a6(r3)
/* 803DF43C  28 00 00 01 */	cmplwi r0, 1
/* 803DF440  40 82 00 70 */	bne lbl_803DF4B0
/* 803DF444  8B 9D 00 87 */	lbz r28, 0x87(r29)
/* 803DF448  2C 1C 00 00 */	cmpwi r28, 0
/* 803DF44C  41 82 00 60 */	beq lbl_803DF4AC
/* 803DF450  8B DD 00 86 */	lbz r30, 0x86(r29)
/* 803DF454  7F C3 F3 78 */	mr r3, r30
/* 803DF458  4B FF FE D1 */	bl mPO_delivery_mail_with_ticket_set_free_str
/* 803DF45C  38 1E FF FF */	addi r0, r30, -1
/* 803DF460  54 03 18 38 */	slwi r3, r0, 3
/* 803DF464  38 03 2C 00 */	addi r0, r3, 0x2c00
/* 803DF468  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 803DF46C  48 00 00 38 */	b lbl_803DF4A4
lbl_803DF470:
/* 803DF470  2C 1C 00 05 */	cmpwi r28, 5
/* 803DF474  3B E0 00 05 */	li r31, 5
/* 803DF478  40 80 00 08 */	bge lbl_803DF480
/* 803DF47C  7F 9F E3 78 */	mr r31, r28
lbl_803DF480:
/* 803DF480  38 1F FF FF */	addi r0, r31, -1
/* 803DF484  7F 63 DB 78 */	mr r3, r27
/* 803DF488  7C 1E 02 14 */	add r0, r30, r0
/* 803DF48C  7F A4 EB 78 */	mr r4, r29
/* 803DF490  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803DF494  4B FF FF 19 */	bl mPO_delivery_mail_with_ticket_sub
/* 803DF498  2C 03 00 00 */	cmpwi r3, 0
/* 803DF49C  41 82 00 10 */	beq lbl_803DF4AC
/* 803DF4A0  7F 9F E0 50 */	subf r28, r31, r28
lbl_803DF4A4:
/* 803DF4A4  2C 1C 00 00 */	cmpwi r28, 0
/* 803DF4A8  40 82 FF C8 */	bne lbl_803DF470
lbl_803DF4AC:
/* 803DF4AC  9B 9D 00 87 */	stb r28, 0x87(r29)
lbl_803DF4B0:
/* 803DF4B0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF4B4  4B CB BA 65 */	bl func_8009AF18
/* 803DF4B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF4BC  7C 08 03 A6 */	mtlr r0
/* 803DF4C0  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF4C4  4E 80 00 20 */	blr 
