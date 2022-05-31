lbl_8057CD3C:
/* 8057CD3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057CD40  7C 08 02 A6 */	mflr r0
/* 8057CD44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057CD48  39 61 00 20 */	addi r11, r1, 0x20
/* 8057CD4C  4B B1 E1 81 */	bl func_8009AECC
/* 8057CD50  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057CD54  7C 7B 1B 78 */	mr r27, r3
/* 8057CD58  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8057CD5C  3B 80 00 05 */	li r28, 5
/* 8057CD60  3F C3 00 02 */	addis r30, r3, 2
/* 8057CD64  3B A0 00 00 */	li r29, 0
/* 8057CD68  48 00 00 50 */	b lbl_8057CDB8
lbl_8057CD6C:
/* 8057CD6C  7F A3 EB 78 */	mr r3, r29
/* 8057CD70  7F 64 DB 78 */	mr r4, r27
/* 8057CD74  4B FF FE 81 */	bl search_lottery_ticket
/* 8057CD78  7C 7F 1B 79 */	or. r31, r3, r3
/* 8057CD7C  41 82 00 38 */	beq lbl_8057CDB4
/* 8057CD80  7C 1F E0 00 */	cmpw r31, r28
/* 8057CD84  41 81 00 1C */	bgt lbl_8057CDA0
/* 8057CD88  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8057CD8C  7F A4 EB 78 */	mr r4, r29
/* 8057CD90  38 A0 00 00 */	li r5, 0
/* 8057CD94  38 C0 00 00 */	li r6, 0
/* 8057CD98  4B E6 40 91 */	bl mPr_SetPossessionItem
/* 8057CD9C  48 00 00 14 */	b lbl_8057CDB0
lbl_8057CDA0:
/* 8057CDA0  7F A3 EB 78 */	mr r3, r29
/* 8057CDA4  7F 84 E3 78 */	mr r4, r28
/* 8057CDA8  7F 65 DB 78 */	mr r5, r27
/* 8057CDAC  4B FF FF 29 */	bl uketori_lottery_ticket_amari
lbl_8057CDB0:
/* 8057CDB0  7F 9F E0 50 */	subf r28, r31, r28
lbl_8057CDB4:
/* 8057CDB4  3B BD 00 01 */	addi r29, r29, 1
lbl_8057CDB8:
/* 8057CDB8  2C 1D 00 0F */	cmpwi r29, 0xf
/* 8057CDBC  40 80 00 0C */	bge lbl_8057CDC8
/* 8057CDC0  2C 1C 00 00 */	cmpwi r28, 0
/* 8057CDC4  41 81 FF A8 */	bgt lbl_8057CD6C
lbl_8057CDC8:
/* 8057CDC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057CDCC  4B B1 E1 4D */	bl func_8009AF18
/* 8057CDD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057CDD4  7C 08 03 A6 */	mtlr r0
/* 8057CDD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057CDDC  4E 80 00 20 */	blr 
