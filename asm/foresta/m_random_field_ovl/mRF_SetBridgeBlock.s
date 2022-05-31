lbl_80509C74:
/* 80509C74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80509C78  7C 08 02 A6 */	mflr r0
/* 80509C7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80509C80  39 61 00 40 */	addi r11, r1, 0x40
/* 80509C84  4B B9 12 35 */	bl func_8009AEB8
/* 80509C88  7C 77 1B 78 */	mr r23, r3
/* 80509C8C  7C 96 23 78 */	mr r22, r4
/* 80509C90  7E F9 BB 78 */	mr r25, r23
/* 80509C94  3B 60 00 00 */	li r27, 0
/* 80509C98  7E FE BB 78 */	mr r30, r23
/* 80509C9C  3B 40 00 00 */	li r26, 0
/* 80509CA0  3B E0 00 00 */	li r31, 0
/* 80509CA4  38 60 00 0A */	li r3, 0xa
/* 80509CA8  4B FF F1 39 */	bl mRF_GetRandom
/* 80509CAC  54 78 07 FE */	clrlwi r24, r3, 0x1f
/* 80509CB0  7E E5 BB 78 */	mr r5, r23
/* 80509CB4  38 61 00 0C */	addi r3, r1, 0xc
/* 80509CB8  38 81 00 08 */	addi r4, r1, 8
/* 80509CBC  4B FF FF 29 */	bl mRF_GetRiverCrossCliffInfo
/* 80509CC0  3B A0 00 00 */	li r29, 0
lbl_80509CC4:
/* 80509CC4  3B 80 00 00 */	li r28, 0
lbl_80509CC8:
/* 80509CC8  88 77 00 00 */	lbz r3, 0(r23)
/* 80509CCC  38 80 00 01 */	li r4, 1
/* 80509CD0  4B FF F1 ED */	bl mRF_CheckBlockGroup
/* 80509CD4  2C 03 00 00 */	cmpwi r3, 0
/* 80509CD8  41 82 00 20 */	beq lbl_80509CF8
/* 80509CDC  80 01 00 08 */	lwz r0, 8(r1)
/* 80509CE0  7C 1D 00 00 */	cmpw r29, r0
/* 80509CE4  40 80 00 0C */	bge lbl_80509CF0
/* 80509CE8  3B 7B 00 01 */	addi r27, r27, 1
/* 80509CEC  48 00 00 0C */	b lbl_80509CF8
lbl_80509CF0:
/* 80509CF0  40 81 00 08 */	ble lbl_80509CF8
/* 80509CF4  3B 5A 00 01 */	addi r26, r26, 1
lbl_80509CF8:
/* 80509CF8  3B 9C 00 01 */	addi r28, r28, 1
/* 80509CFC  3A F7 00 01 */	addi r23, r23, 1
/* 80509D00  2C 1C 00 07 */	cmpwi r28, 7
/* 80509D04  41 80 FF C4 */	blt lbl_80509CC8
/* 80509D08  3B BD 00 01 */	addi r29, r29, 1
/* 80509D0C  2C 1D 00 08 */	cmpwi r29, 8
/* 80509D10  41 80 FF B4 */	blt lbl_80509CC4
/* 80509D14  2C 1B 00 00 */	cmpwi r27, 0
/* 80509D18  41 82 00 74 */	beq lbl_80509D8C
/* 80509D1C  7F 63 DB 78 */	mr r3, r27
/* 80509D20  4B FF F0 C1 */	bl mRF_GetRandom
/* 80509D24  7C 7D 1B 78 */	mr r29, r3
/* 80509D28  3A E0 00 00 */	li r23, 0
/* 80509D2C  3B 80 00 00 */	li r28, 0
lbl_80509D30:
/* 80509D30  3B 60 00 00 */	li r27, 0
lbl_80509D34:
/* 80509D34  88 79 00 00 */	lbz r3, 0(r25)
/* 80509D38  38 80 00 01 */	li r4, 1
/* 80509D3C  4B FF F1 81 */	bl mRF_CheckBlockGroup
/* 80509D40  2C 03 00 00 */	cmpwi r3, 0
/* 80509D44  41 82 00 2C */	beq lbl_80509D70
/* 80509D48  80 01 00 08 */	lwz r0, 8(r1)
/* 80509D4C  7C 1C 00 00 */	cmpw r28, r0
/* 80509D50  40 80 00 20 */	bge lbl_80509D70
/* 80509D54  7C 17 E8 00 */	cmpw r23, r29
/* 80509D58  40 82 00 14 */	bne lbl_80509D6C
/* 80509D5C  88 79 00 00 */	lbz r3, 0(r25)
/* 80509D60  63 FF 00 04 */	ori r31, r31, 4
/* 80509D64  38 03 00 07 */	addi r0, r3, 7
/* 80509D68  98 19 00 00 */	stb r0, 0(r25)
lbl_80509D6C:
/* 80509D6C  3A F7 00 01 */	addi r23, r23, 1
lbl_80509D70:
/* 80509D70  3B 7B 00 01 */	addi r27, r27, 1
/* 80509D74  3B 39 00 01 */	addi r25, r25, 1
/* 80509D78  2C 1B 00 07 */	cmpwi r27, 7
/* 80509D7C  41 80 FF B8 */	blt lbl_80509D34
/* 80509D80  3B 9C 00 01 */	addi r28, r28, 1
/* 80509D84  2C 1C 00 08 */	cmpwi r28, 8
/* 80509D88  41 80 FF A8 */	blt lbl_80509D30
lbl_80509D8C:
/* 80509D8C  2C 1A 00 00 */	cmpwi r26, 0
/* 80509D90  41 82 00 84 */	beq lbl_80509E14
/* 80509D94  2C 16 00 00 */	cmpwi r22, 0
/* 80509D98  40 82 00 7C */	bne lbl_80509E14
/* 80509D9C  2C 18 00 00 */	cmpwi r24, 0
/* 80509DA0  41 82 00 74 */	beq lbl_80509E14
/* 80509DA4  7F 43 D3 78 */	mr r3, r26
/* 80509DA8  4B FF F0 39 */	bl mRF_GetRandom
/* 80509DAC  7C 7D 1B 78 */	mr r29, r3
/* 80509DB0  3A E0 00 00 */	li r23, 0
/* 80509DB4  3B 80 00 00 */	li r28, 0
lbl_80509DB8:
/* 80509DB8  3B 60 00 00 */	li r27, 0
lbl_80509DBC:
/* 80509DBC  88 7E 00 00 */	lbz r3, 0(r30)
/* 80509DC0  38 80 00 01 */	li r4, 1
/* 80509DC4  4B FF F0 F9 */	bl mRF_CheckBlockGroup
/* 80509DC8  2C 03 00 00 */	cmpwi r3, 0
/* 80509DCC  41 82 00 2C */	beq lbl_80509DF8
/* 80509DD0  80 01 00 08 */	lwz r0, 8(r1)
/* 80509DD4  7C 1C 00 00 */	cmpw r28, r0
/* 80509DD8  40 81 00 20 */	ble lbl_80509DF8
/* 80509DDC  7C 17 E8 00 */	cmpw r23, r29
/* 80509DE0  40 82 00 14 */	bne lbl_80509DF4
/* 80509DE4  88 7E 00 00 */	lbz r3, 0(r30)
/* 80509DE8  63 FF 00 08 */	ori r31, r31, 8
/* 80509DEC  38 03 00 07 */	addi r0, r3, 7
/* 80509DF0  98 1E 00 00 */	stb r0, 0(r30)
lbl_80509DF4:
/* 80509DF4  3A F7 00 01 */	addi r23, r23, 1
lbl_80509DF8:
/* 80509DF8  3B 7B 00 01 */	addi r27, r27, 1
/* 80509DFC  3B DE 00 01 */	addi r30, r30, 1
/* 80509E00  2C 1B 00 07 */	cmpwi r27, 7
/* 80509E04  41 80 FF B8 */	blt lbl_80509DBC
/* 80509E08  3B 9C 00 01 */	addi r28, r28, 1
/* 80509E0C  2C 1C 00 08 */	cmpwi r28, 8
/* 80509E10  41 80 FF A8 */	blt lbl_80509DB8
lbl_80509E14:
/* 80509E14  7F E3 FB 78 */	mr r3, r31
/* 80509E18  39 61 00 40 */	addi r11, r1, 0x40
/* 80509E1C  4B B9 10 E9 */	bl func_8009AF04
/* 80509E20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80509E24  7C 08 03 A6 */	mtlr r0
/* 80509E28  38 21 00 40 */	addi r1, r1, 0x40
/* 80509E2C  4E 80 00 20 */	blr 
