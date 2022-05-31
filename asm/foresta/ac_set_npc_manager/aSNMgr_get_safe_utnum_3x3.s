lbl_804979B8:
/* 804979B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804979BC  7C 08 02 A6 */	mflr r0
/* 804979C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804979C4  39 61 00 50 */	addi r11, r1, 0x50
/* 804979C8  4B C0 34 DD */	bl func_8009AEA4
/* 804979CC  7C B7 2B 78 */	mr r23, r5
/* 804979D0  7C D8 33 78 */	mr r24, r6
/* 804979D4  7C 75 1B 78 */	mr r21, r3
/* 804979D8  7C 96 23 78 */	mr r22, r4
/* 804979DC  7E E3 BB 78 */	mr r3, r23
/* 804979E0  7F 04 C3 78 */	mr r4, r24
/* 804979E4  4B F0 EB 89 */	bl mFI_GetBkNum2ColTop
/* 804979E8  7C 7D 1B 78 */	mr r29, r3
/* 804979EC  7E E3 BB 78 */	mr r3, r23
/* 804979F0  7F 04 C3 78 */	mr r4, r24
/* 804979F4  4B F0 F7 61 */	bl mFI_BkNumtoUtFGTop
/* 804979F8  28 1D 00 00 */	cmplwi r29, 0
/* 804979FC  7C 7E 1B 78 */	mr r30, r3
/* 80497A00  3B 60 00 00 */	li r27, 0
/* 80497A04  41 82 00 B0 */	beq lbl_80497AB4
/* 80497A08  28 1E 00 00 */	cmplwi r30, 0
/* 80497A0C  41 82 00 A8 */	beq lbl_80497AB4
/* 80497A10  3C 80 80 69 */	lis r4, ux_table@ha /* 0x8068BB64@ha */
/* 80497A14  3C 60 80 69 */	lis r3, uz_table@ha /* 0x8068BB88@ha */
/* 80497A18  83 55 00 00 */	lwz r26, 0(r21)
/* 80497A1C  3B E4 BB 64 */	addi r31, r4, ux_table@l /* 0x8068BB64@l */
/* 80497A20  83 36 00 00 */	lwz r25, 0(r22)
/* 80497A24  3A 63 BB 88 */	addi r19, r3, uz_table@l /* 0x8068BB88@l */
/* 80497A28  3B 80 00 00 */	li r28, 0
/* 80497A2C  3A 80 00 00 */	li r20, 0
lbl_80497A30:
/* 80497A30  7C 7F A0 2E */	lwzx r3, r31, r20
/* 80497A34  7C 13 A0 2E */	lwzx r0, r19, r20
/* 80497A38  7E 5A 1A 14 */	add r18, r26, r3
/* 80497A3C  2C 12 00 01 */	cmpwi r18, 1
/* 80497A40  7E 39 02 14 */	add r17, r25, r0
/* 80497A44  41 80 00 60 */	blt lbl_80497AA4
/* 80497A48  2C 12 00 0F */	cmpwi r18, 0xf
/* 80497A4C  40 80 00 58 */	bge lbl_80497AA4
/* 80497A50  2C 11 00 01 */	cmpwi r17, 1
/* 80497A54  41 80 00 50 */	blt lbl_80497AA4
/* 80497A58  2C 11 00 0F */	cmpwi r17, 0xf
/* 80497A5C  40 80 00 48 */	bge lbl_80497AA4
/* 80497A60  56 20 20 36 */	slwi r0, r17, 4
/* 80497A64  7E E3 BB 78 */	mr r3, r23
/* 80497A68  7C 12 02 14 */	add r0, r18, r0
/* 80497A6C  7F 04 C3 78 */	mr r4, r24
/* 80497A70  54 06 08 3C */	slwi r6, r0, 1
/* 80497A74  7E 45 93 78 */	mr r5, r18
/* 80497A78  54 00 10 3A */	slwi r0, r0, 2
/* 80497A7C  7C FE 32 2E */	lhzx r7, r30, r6
/* 80497A80  7E 26 8B 78 */	mr r6, r17
/* 80497A84  7D 1D 02 14 */	add r8, r29, r0
/* 80497A88  4B FF FD 75 */	bl aSNMgr_check_safe_ut
/* 80497A8C  2C 03 00 01 */	cmpwi r3, 1
/* 80497A90  40 82 00 14 */	bne lbl_80497AA4
/* 80497A94  92 55 00 00 */	stw r18, 0(r21)
/* 80497A98  3B 60 00 01 */	li r27, 1
/* 80497A9C  92 36 00 00 */	stw r17, 0(r22)
/* 80497AA0  48 00 00 14 */	b lbl_80497AB4
lbl_80497AA4:
/* 80497AA4  3B 9C 00 01 */	addi r28, r28, 1
/* 80497AA8  3A 94 00 04 */	addi r20, r20, 4
/* 80497AAC  2C 1C 00 09 */	cmpwi r28, 9
/* 80497AB0  41 80 FF 80 */	blt lbl_80497A30
lbl_80497AB4:
/* 80497AB4  7F 63 DB 78 */	mr r3, r27
/* 80497AB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80497ABC  4B C0 34 35 */	bl func_8009AEF0
/* 80497AC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80497AC4  7C 08 03 A6 */	mtlr r0
/* 80497AC8  38 21 00 50 */	addi r1, r1, 0x50
/* 80497ACC  4E 80 00 20 */	blr 
