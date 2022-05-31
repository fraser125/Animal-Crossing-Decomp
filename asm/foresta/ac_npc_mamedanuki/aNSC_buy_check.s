lbl_8055CBA0:
/* 8055CBA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8055CBA4  7C 08 02 A6 */	mflr r0
/* 8055CBA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055CBAC  39 61 00 40 */	addi r11, r1, 0x40
/* 8055CBB0  4B B3 E3 09 */	bl func_8009AEB8
/* 8055CBB4  3C A0 80 6A */	lis r5, data_806A6C60@ha /* 0x806A6C60@ha */
/* 8055CBB8  7C 78 1B 78 */	mr r24, r3
/* 8055CBBC  7C 99 23 78 */	mr r25, r4
/* 8055CBC0  3B E5 6C 60 */	addi r31, r5, data_806A6C60@l /* 0x806A6C60@l */
/* 8055CBC4  4B E6 2A E5 */	bl func_803BF6A8
/* 8055CBC8  7C 60 1B 78 */	mr r0, r3
/* 8055CBCC  38 60 00 1B */	li r3, 0x1b
/* 8055CBD0  7C 1D 03 78 */	mr r29, r0
/* 8055CBD4  4B FF EA 09 */	bl aNSC_get_msg_no
/* 8055CBD8  7C 7A 1B 78 */	mr r26, r3
/* 8055CBDC  38 60 00 D6 */	li r3, 0xd6
/* 8055CBE0  4B FF E9 FD */	bl aNSC_get_msg_no
/* 8055CBE4  7C 77 1B 78 */	mr r23, r3
/* 8055CBE8  38 60 00 D8 */	li r3, 0xd8
/* 8055CBEC  4B FF E9 F1 */	bl aNSC_get_msg_no
/* 8055CBF0  7C 76 1B 78 */	mr r22, r3
/* 8055CBF4  7F A3 EB 78 */	mr r3, r29
/* 8055CBF8  4B E6 33 D5 */	bl mMsg_Get_msg_num
/* 8055CBFC  7C 03 D0 00 */	cmpw r3, r26
/* 8055CC00  41 82 00 14 */	beq lbl_8055CC14
/* 8055CC04  7C 03 B8 00 */	cmpw r3, r23
/* 8055CC08  41 82 00 0C */	beq lbl_8055CC14
/* 8055CC0C  7C 03 B0 00 */	cmpw r3, r22
/* 8055CC10  40 82 01 F8 */	bne lbl_8055CE08
lbl_8055CC14:
/* 8055CC14  7F A3 EB 78 */	mr r3, r29
/* 8055CC18  4B E6 40 81 */	bl mMsg_Check_MainNormalContinue
/* 8055CC1C  2C 03 00 00 */	cmpwi r3, 0
/* 8055CC20  41 82 01 E8 */	beq lbl_8055CE08
/* 8055CC24  3B 80 FF FF */	li r28, -1
/* 8055CC28  4B E2 69 19 */	bl func_80383540
/* 8055CC2C  4B E2 6F 41 */	bl mChoice_Get_ChoseNum
/* 8055CC30  2C 03 00 01 */	cmpwi r3, 1
/* 8055CC34  41 82 01 8C */	beq lbl_8055CDC0
/* 8055CC38  40 80 01 8C */	bge lbl_8055CDC4
/* 8055CC3C  2C 03 00 00 */	cmpwi r3, 0
/* 8055CC40  40 80 00 08 */	bge lbl_8055CC48
/* 8055CC44  48 00 01 80 */	b lbl_8055CDC4
lbl_8055CC48:
/* 8055CC48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055CC4C  3B 80 00 01 */	li r28, 1
/* 8055CC50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055CC54  3F C3 00 02 */	addis r30, r3, 2
/* 8055CC58  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8055CC5C  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8055CC60  90 61 00 08 */	stw r3, 8(r1)
/* 8055CC64  80 18 09 A8 */	lwz r0, 0x9a8(r24)
/* 8055CC68  83 78 09 B0 */	lwz r27, 0x9b0(r24)
/* 8055CC6C  83 59 1F 60 */	lwz r26, 0x1f60(r25)
/* 8055CC70  7C 63 02 14 */	add r3, r3, r0
/* 8055CC74  7F 64 DB 78 */	mr r4, r27
/* 8055CC78  90 61 00 08 */	stw r3, 8(r1)
/* 8055CC7C  4B FF E4 35 */	bl aNSC_check_money_overflow
/* 8055CC80  2C 03 00 00 */	cmpwi r3, 0
/* 8055CC84  40 82 00 0C */	bne lbl_8055CC90
/* 8055CC88  3B 80 00 03 */	li r28, 3
/* 8055CC8C  48 00 01 38 */	b lbl_8055CDC4
lbl_8055CC90:
/* 8055CC90  88 1A 00 02 */	lbz r0, 2(r26)
/* 8055CC94  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 8055CC98  54 03 08 3C */	slwi r3, r0, 1
/* 8055CC9C  80 18 09 A8 */	lwz r0, 0x9a8(r24)
/* 8055CCA0  7C 64 1A 14 */	add r3, r4, r3
/* 8055CCA4  A2 C3 00 68 */	lhz r22, 0x68(r3)
/* 8055CCA8  54 03 F8 7E */	srwi r3, r0, 1
/* 8055CCAC  4B E8 CB B1 */	bl mSP_PlusSales
/* 8055CCB0  28 1B 00 01 */	cmplwi r27, 1
/* 8055CCB4  40 82 00 20 */	bne lbl_8055CCD4
/* 8055CCB8  80 D8 09 A8 */	lwz r6, 0x9a8(r24)
/* 8055CCBC  7E C4 B3 78 */	mr r4, r22
/* 8055CCC0  7F 45 D3 78 */	mr r5, r26
/* 8055CCC4  38 61 00 08 */	addi r3, r1, 8
/* 8055CCC8  4B FF F4 4D */	bl aNSC_buy_item_only_one
/* 8055CCCC  7C 7C 1B 78 */	mr r28, r3
/* 8055CCD0  48 00 00 E0 */	b lbl_8055CDB0
lbl_8055CCD4:
/* 8055CCD4  A8 19 1F 66 */	lha r0, 0x1f66(r25)
/* 8055CCD8  2C 00 00 01 */	cmpwi r0, 1
/* 8055CCDC  40 81 00 98 */	ble lbl_8055CD74
/* 8055CCE0  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8055CCE4  3A FF 31 D0 */	addi r23, r31, 0x31d0
/* 8055CCE8  3A C3 86 9F */	addi r22, r3, 0x869F /* 0x0001869F@l */
/* 8055CCEC  48 00 00 48 */	b lbl_8055CD34
lbl_8055CCF0:
/* 8055CCF0  80 61 00 08 */	lwz r3, 8(r1)
/* 8055CCF4  7C 03 B0 40 */	cmplw r3, r22
/* 8055CCF8  41 80 00 18 */	blt lbl_8055CD10
/* 8055CCFC  38 03 8A D0 */	addi r0, r3, -30000
/* 8055CD00  38 60 00 00 */	li r3, 0
/* 8055CD04  90 01 00 08 */	stw r0, 8(r1)
/* 8055CD08  3B 80 00 00 */	li r28, 0
/* 8055CD0C  48 00 00 08 */	b lbl_8055CD14
lbl_8055CD10:
/* 8055CD10  38 60 00 01 */	li r3, 1
lbl_8055CD14:
/* 8055CD14  54 60 08 3C */	slwi r0, r3, 1
/* 8055CD18  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8055CD1C  88 9A 00 02 */	lbz r4, 2(r26)
/* 8055CD20  38 C0 00 00 */	li r6, 0
/* 8055CD24  7C B7 02 2E */	lhzx r5, r23, r0
/* 8055CD28  4B E8 41 01 */	bl mPr_SetPossessionItem
/* 8055CD2C  3B 5A 00 04 */	addi r26, r26, 4
/* 8055CD30  3B 7B FF FF */	addi r27, r27, -1
lbl_8055CD34:
/* 8055CD34  28 1B 00 00 */	cmplwi r27, 0
/* 8055CD38  40 82 FF B8 */	bne lbl_8055CCF0
/* 8055CD3C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8055CD40  3B 43 86 9F */	addi r26, r3, 0x869F /* 0x0001869F@l */
/* 8055CD44  48 00 00 20 */	b lbl_8055CD64
lbl_8055CD48:
/* 8055CD48  80 C1 00 08 */	lwz r6, 8(r1)
/* 8055CD4C  38 80 21 02 */	li r4, 0x2102
/* 8055CD50  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8055CD54  38 A0 00 00 */	li r5, 0
/* 8055CD58  38 06 8A D0 */	addi r0, r6, -30000
/* 8055CD5C  90 01 00 08 */	stw r0, 8(r1)
/* 8055CD60  4B E8 41 A9 */	bl mPr_SetFreePossessionItem
lbl_8055CD64:
/* 8055CD64  80 01 00 08 */	lwz r0, 8(r1)
/* 8055CD68  7C 00 D0 40 */	cmplw r0, r26
/* 8055CD6C  40 80 FF DC */	bge lbl_8055CD48
/* 8055CD70  48 00 00 40 */	b lbl_8055CDB0
lbl_8055CD74:
/* 8055CD74  28 16 20 00 */	cmplwi r22, 0x2000
/* 8055CD78  41 80 00 24 */	blt lbl_8055CD9C
/* 8055CD7C  28 16 20 FF */	cmplwi r22, 0x20ff
/* 8055CD80  41 81 00 1C */	bgt lbl_8055CD9C
/* 8055CD84  7E C4 B3 78 */	mr r4, r22
/* 8055CD88  7F 65 DB 78 */	mr r5, r27
/* 8055CD8C  38 61 00 08 */	addi r3, r1, 8
/* 8055CD90  4B FF F2 75 */	bl aNSC_buy_paper
/* 8055CD94  7C 7C 1B 78 */	mr r28, r3
/* 8055CD98  48 00 00 18 */	b lbl_8055CDB0
lbl_8055CD9C:
/* 8055CD9C  7E C4 B3 78 */	mr r4, r22
/* 8055CDA0  7F 65 DB 78 */	mr r5, r27
/* 8055CDA4  38 61 00 08 */	addi r3, r1, 8
/* 8055CDA8  4B FF F1 6D */	bl aNSC_buy_item_single
/* 8055CDAC  7C 7C 1B 78 */	mr r28, r3
lbl_8055CDB0:
/* 8055CDB0  80 01 00 08 */	lwz r0, 8(r1)
/* 8055CDB4  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8055CDB8  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8055CDBC  48 00 00 08 */	b lbl_8055CDC4
lbl_8055CDC0:
/* 8055CDC0  3B 80 00 02 */	li r28, 2
lbl_8055CDC4:
/* 8055CDC4  2C 1C FF FF */	cmpwi r28, -1
/* 8055CDC8  41 82 00 40 */	beq lbl_8055CE08
/* 8055CDCC  7F A3 EB 78 */	mr r3, r29
/* 8055CDD0  4B E6 3F 59 */	bl mMsg_Set_ForceNext
/* 8055CDD4  57 96 10 3A */	slwi r22, r28, 2
/* 8055CDD8  38 7F 32 84 */	addi r3, r31, 0x3284
/* 8055CDDC  7C 63 B0 2E */	lwzx r3, r3, r22
/* 8055CDE0  4B FF E7 FD */	bl aNSC_get_msg_no
/* 8055CDE4  7C 65 1B 78 */	mr r5, r3
/* 8055CDE8  7F A3 EB 78 */	mr r3, r29
/* 8055CDEC  7F 04 C3 78 */	mr r4, r24
/* 8055CDF0  4B FF E8 25 */	bl aNSC_Set_continue_msg_num
/* 8055CDF4  38 9F 32 94 */	addi r4, r31, 0x3294
/* 8055CDF8  7F 03 C3 78 */	mr r3, r24
/* 8055CDFC  7C A4 B0 2E */	lwzx r5, r4, r22
/* 8055CE00  7F 24 CB 78 */	mr r4, r25
/* 8055CE04  48 00 1F CD */	bl aNSC_setupAction
lbl_8055CE08:
/* 8055CE08  39 61 00 40 */	addi r11, r1, 0x40
/* 8055CE0C  4B B3 E0 F9 */	bl func_8009AF04
/* 8055CE10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055CE14  7C 08 03 A6 */	mtlr r0
/* 8055CE18  38 21 00 40 */	addi r1, r1, 0x40
/* 8055CE1C  4E 80 00 20 */	blr 
