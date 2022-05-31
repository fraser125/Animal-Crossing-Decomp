lbl_804CDAE0:
/* 804CDAE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CDAE4  7C 08 02 A6 */	mflr r0
/* 804CDAE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CDAEC  39 61 00 20 */	addi r11, r1, 0x20
/* 804CDAF0  4B BC D3 DD */	bl func_8009AECC
/* 804CDAF4  3C 80 81 1D */	lis r4, data_811D0840@ha /* 0x811D0840@ha */
/* 804CDAF8  7C 7B 1B 78 */	mr r27, r3
/* 804CDAFC  38 64 08 40 */	addi r3, r4, data_811D0840@l /* 0x811D0840@l */
/* 804CDB00  3B E0 00 00 */	li r31, 0
/* 804CDB04  3B C3 24 34 */	addi r30, r3, 0x2434
/* 804CDB08  3B A3 01 D4 */	addi r29, r3, 0x1d4
lbl_804CDB0C:
/* 804CDB0C  88 1E 00 00 */	lbz r0, 0(r30)
/* 804CDB10  28 00 00 00 */	cmplwi r0, 0
/* 804CDB14  41 82 00 70 */	beq lbl_804CDB84
/* 804CDB18  A8 1D 00 02 */	lha r0, 2(r29)
/* 804CDB1C  3C 60 80 6A */	lis r3, data_8069BC10@ha /* 0x8069BC10@ha */
/* 804CDB20  38 A3 BC 10 */	addi r5, r3, data_8069BC10@l /* 0x8069BC10@l */
/* 804CDB24  7F A3 EB 78 */	mr r3, r29
/* 804CDB28  54 00 10 3A */	slwi r0, r0, 2
/* 804CDB2C  7F 64 DB 78 */	mr r4, r27
/* 804CDB30  7C A5 00 2E */	lwzx r5, r5, r0
/* 804CDB34  AB 9D 00 04 */	lha r28, 4(r29)
/* 804CDB38  81 85 00 08 */	lwz r12, 8(r5)
/* 804CDB3C  7D 89 03 A6 */	mtctr r12
/* 804CDB40  4E 80 04 21 */	bctrl 
/* 804CDB44  A8 7D 00 00 */	lha r3, 0(r29)
/* 804CDB48  38 03 FF FF */	addi r0, r3, -1
/* 804CDB4C  B0 1D 00 00 */	sth r0, 0(r29)
/* 804CDB50  A8 1D 00 00 */	lha r0, 0(r29)
/* 804CDB54  2C 00 00 00 */	cmpwi r0, 0
/* 804CDB58  40 81 00 1C */	ble lbl_804CDB74
/* 804CDB5C  7F A3 EB 78 */	mr r3, r29
/* 804CDB60  7F 64 DB 78 */	mr r4, r27
/* 804CDB64  7F 85 E3 78 */	mr r5, r28
/* 804CDB68  4B FF FE 61 */	bl eEC_DistDeath
/* 804CDB6C  2C 03 00 01 */	cmpwi r3, 1
/* 804CDB70  40 82 00 14 */	bne lbl_804CDB84
lbl_804CDB74:
/* 804CDB74  38 00 00 00 */	li r0, 0
/* 804CDB78  98 1E 00 00 */	stb r0, 0(r30)
/* 804CDB7C  B0 1D 00 00 */	sth r0, 0(r29)
/* 804CDB80  B0 1D 00 0A */	sth r0, 0xa(r29)
lbl_804CDB84:
/* 804CDB84  3B FF 00 01 */	addi r31, r31, 1
/* 804CDB88  3B BD 00 58 */	addi r29, r29, 0x58
/* 804CDB8C  2C 1F 00 64 */	cmpwi r31, 0x64
/* 804CDB90  3B DE 00 01 */	addi r30, r30, 1
/* 804CDB94  41 80 FF 78 */	blt lbl_804CDB0C
/* 804CDB98  39 61 00 20 */	addi r11, r1, 0x20
/* 804CDB9C  4B BC D3 7D */	bl func_8009AF18
/* 804CDBA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CDBA4  7C 08 03 A6 */	mtlr r0
/* 804CDBA8  38 21 00 20 */	addi r1, r1, 0x20
/* 804CDBAC  4E 80 00 20 */	blr 
