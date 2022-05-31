lbl_803F99AC:
/* 803F99AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F99B0  7C 08 02 A6 */	mflr r0
/* 803F99B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F99B8  39 61 00 30 */	addi r11, r1, 0x30
/* 803F99BC  4B CA 15 15 */	bl func_8009AED0
/* 803F99C0  7C FE 3B 79 */	or. r30, r7, r7
/* 803F99C4  3C E0 81 17 */	lis r7, l_mcd_bg_info@ha /* 0x811715BC@ha */
/* 803F99C8  39 27 15 BC */	addi r9, r7, l_mcd_bg_info@l /* 0x811715BC@l */
/* 803F99CC  7C 88 23 78 */	mr r8, r4
/* 803F99D0  81 49 00 18 */	lwz r10, 0x18(r9)
/* 803F99D4  7C 67 1B 78 */	mr r7, r3
/* 803F99D8  7C DD 33 78 */	mr r29, r6
/* 803F99DC  7D 3C 4B 78 */	mr r28, r9
/* 803F99E0  3B E0 00 00 */	li r31, 0
/* 803F99E4  41 82 00 0C */	beq lbl_803F99F0
/* 803F99E8  38 00 00 00 */	li r0, 0
/* 803F99EC  90 1E 00 00 */	stw r0, 0(r30)
lbl_803F99F0:
/* 803F99F0  2C 0A 00 00 */	cmpwi r10, 0
/* 803F99F4  41 80 00 CC */	blt lbl_803F9AC0
/* 803F99F8  2C 0A 00 04 */	cmpwi r10, 4
/* 803F99FC  40 80 00 C4 */	bge lbl_803F9AC0
/* 803F9A00  3C 80 81 17 */	lis r4, work_p_1353@ha /* 0x81171608@ha */
/* 803F9A04  38 C0 00 00 */	li r6, 0
/* 803F9A08  38 04 16 08 */	addi r0, r4, work_p_1353@l /* 0x81171608@l */
/* 803F9A0C  3C 60 80 66 */	lis r3, sp_proc@ha /* 0x8065E460@ha */
/* 803F9A10  90 01 00 08 */	stw r0, 8(r1)
/* 803F9A14  55 40 10 3A */	slwi r0, r10, 2
/* 803F9A18  39 43 E4 60 */	addi r10, r3, sp_proc@l /* 0x8065E460@l */
/* 803F9A1C  7C A4 2B 78 */	mr r4, r5
/* 803F9A20  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803F9A24  7F 83 E3 78 */	mr r3, r28
/* 803F9A28  7F A5 EB 78 */	mr r5, r29
/* 803F9A2C  39 20 00 00 */	li r9, 0
/* 803F9A30  90 C1 00 10 */	stw r6, 0x10(r1)
/* 803F9A34  38 C0 00 00 */	li r6, 0
/* 803F9A38  7D 8A 00 2E */	lwzx r12, r10, r0
/* 803F9A3C  39 40 00 00 */	li r10, 0
/* 803F9A40  7D 89 03 A6 */	mtctr r12
/* 803F9A44  4E 80 04 21 */	bctrl 
/* 803F9A48  2C 03 00 01 */	cmpwi r3, 1
/* 803F9A4C  40 82 00 30 */	bne lbl_803F9A7C
/* 803F9A50  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 803F9A54  2C 00 00 04 */	cmpwi r0, 4
/* 803F9A58  40 82 00 24 */	bne lbl_803F9A7C
/* 803F9A5C  28 1E 00 00 */	cmplwi r30, 0
/* 803F9A60  41 82 00 0C */	beq lbl_803F9A6C
/* 803F9A64  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 803F9A68  90 1E 00 00 */	stw r0, 0(r30)
lbl_803F9A6C:
/* 803F9A6C  7F 83 E3 78 */	mr r3, r28
/* 803F9A70  4B FF E0 A9 */	bl mCD_ClearCardBgInfo
/* 803F9A74  3B E0 00 01 */	li r31, 1
/* 803F9A78  48 00 00 18 */	b lbl_803F9A90
lbl_803F9A7C:
/* 803F9A7C  2C 03 FF FF */	cmpwi r3, -1
/* 803F9A80  40 82 00 10 */	bne lbl_803F9A90
/* 803F9A84  7F 83 E3 78 */	mr r3, r28
/* 803F9A88  4B FF E0 91 */	bl mCD_ClearCardBgInfo
/* 803F9A8C  3B E0 FF FF */	li r31, -1
lbl_803F9A90:
/* 803F9A90  2C 1F 00 00 */	cmpwi r31, 0
/* 803F9A94  41 82 00 54 */	beq lbl_803F9AE8
/* 803F9A98  3C 60 81 17 */	lis r3, work_p_1353@ha /* 0x81171608@ha */
/* 803F9A9C  38 63 16 08 */	addi r3, r3, work_p_1353@l /* 0x81171608@l */
/* 803F9AA0  80 63 00 00 */	lwz r3, 0(r3)
/* 803F9AA4  28 03 00 00 */	cmplwi r3, 0
/* 803F9AA8  41 82 00 40 */	beq lbl_803F9AE8
/* 803F9AAC  4B FC 2A 09 */	bl zelda_free
/* 803F9AB0  3C 60 81 17 */	lis r3, work_p_1353@ha /* 0x81171608@ha */
/* 803F9AB4  38 00 00 00 */	li r0, 0
/* 803F9AB8  90 03 16 08 */	stw r0, work_p_1353@l(r3)  /* 0x81171608@l */
/* 803F9ABC  48 00 00 2C */	b lbl_803F9AE8
lbl_803F9AC0:
/* 803F9AC0  3C 60 81 17 */	lis r3, work_p_1353@ha /* 0x81171608@ha */
/* 803F9AC4  38 63 16 08 */	addi r3, r3, work_p_1353@l /* 0x81171608@l */
/* 803F9AC8  80 63 00 00 */	lwz r3, 0(r3)
/* 803F9ACC  28 03 00 00 */	cmplwi r3, 0
/* 803F9AD0  41 82 00 14 */	beq lbl_803F9AE4
/* 803F9AD4  4B FC 29 E1 */	bl zelda_free
/* 803F9AD8  3C 60 81 17 */	lis r3, work_p_1353@ha /* 0x81171608@ha */
/* 803F9ADC  38 00 00 00 */	li r0, 0
/* 803F9AE0  90 03 16 08 */	stw r0, work_p_1353@l(r3)  /* 0x81171608@l */
lbl_803F9AE4:
/* 803F9AE4  3B E0 FF FF */	li r31, -1
lbl_803F9AE8:
/* 803F9AE8  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803F9AEC  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803F9AF0  2C 00 00 02 */	cmpwi r0, 2
/* 803F9AF4  41 80 00 38 */	blt lbl_803F9B2C
/* 803F9AF8  2C 1F FF FF */	cmpwi r31, -1
/* 803F9AFC  40 82 00 18 */	bne lbl_803F9B14
/* 803F9B00  38 60 00 06 */	li r3, 6
/* 803F9B04  4B FF DB 3D */	bl mCD_OnErrInfo
/* 803F9B08  80 7D 00 00 */	lwz r3, 0(r29)
/* 803F9B0C  4B FF DB 85 */	bl mCD_SetErrResult
/* 803F9B10  48 00 00 1C */	b lbl_803F9B2C
lbl_803F9B14:
/* 803F9B14  2C 1F 00 01 */	cmpwi r31, 1
/* 803F9B18  40 82 00 14 */	bne lbl_803F9B2C
/* 803F9B1C  38 60 00 06 */	li r3, 6
/* 803F9B20  4B FF DB 49 */	bl mCD_OffErrInfo
/* 803F9B24  80 7D 00 00 */	lwz r3, 0(r29)
/* 803F9B28  4B FF DB 69 */	bl mCD_SetErrResult
lbl_803F9B2C:
/* 803F9B2C  7F E3 FB 78 */	mr r3, r31
/* 803F9B30  39 61 00 30 */	addi r11, r1, 0x30
/* 803F9B34  4B CA 13 E9 */	bl func_8009AF1C
/* 803F9B38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F9B3C  7C 08 03 A6 */	mtlr r0
/* 803F9B40  38 21 00 30 */	addi r1, r1, 0x30
/* 803F9B44  4E 80 00 20 */	blr 
