lbl_803F96F8:
/* 803F96F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F96FC  7C 08 02 A6 */	mflr r0
/* 803F9700  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F9704  39 61 00 30 */	addi r11, r1, 0x30
/* 803F9708  4B CA 17 C5 */	bl func_8009AECC
/* 803F970C  3D 20 81 17 */	lis r9, l_mcd_bg_info@ha /* 0x811715BC@ha */
/* 803F9710  7D 1E 43 78 */	mr r30, r8
/* 803F9714  39 89 15 BC */	addi r12, r9, l_mcd_bg_info@l /* 0x811715BC@l */
/* 803F9718  39 40 00 00 */	li r10, 0
/* 803F971C  80 0C 00 18 */	lwz r0, 0x18(r12)
/* 803F9720  7C 7B 1B 78 */	mr r27, r3
/* 803F9724  7C 88 23 78 */	mr r8, r4
/* 803F9728  7C A9 2B 78 */	mr r9, r5
/* 803F972C  2C 00 00 00 */	cmpwi r0, 0
/* 803F9730  91 5E 00 00 */	stw r10, 0(r30)
/* 803F9734  7C FD 3B 78 */	mr r29, r7
/* 803F9738  7D 9C 63 78 */	mr r28, r12
/* 803F973C  3B E0 00 00 */	li r31, 0
/* 803F9740  41 80 00 C0 */	blt lbl_803F9800
/* 803F9744  2C 00 00 05 */	cmpwi r0, 5
/* 803F9748  40 80 00 B8 */	bge lbl_803F9800
/* 803F974C  3C 80 81 17 */	lis r4, work_p_1302@ha /* 0x81171604@ha */
/* 803F9750  3C 60 80 66 */	lis r3, cbg_proc@ha /* 0x8065E44C@ha */
/* 803F9754  38 84 16 04 */	addi r4, r4, work_p_1302@l /* 0x81171604@l */
/* 803F9758  54 00 10 3A */	slwi r0, r0, 2
/* 803F975C  90 81 00 08 */	stw r4, 8(r1)
/* 803F9760  39 63 E4 4C */	addi r11, r3, cbg_proc@l /* 0x8065E44C@l */
/* 803F9764  7C C4 33 78 */	mr r4, r6
/* 803F9768  7D 83 63 78 */	mr r3, r12
/* 803F976C  91 41 00 0C */	stw r10, 0xc(r1)
/* 803F9770  7F A5 EB 78 */	mr r5, r29
/* 803F9774  7F 67 DB 78 */	mr r7, r27
/* 803F9778  38 C0 00 00 */	li r6, 0
/* 803F977C  91 41 00 10 */	stw r10, 0x10(r1)
/* 803F9780  39 40 00 00 */	li r10, 0
/* 803F9784  7D 8B 00 2E */	lwzx r12, r11, r0
/* 803F9788  7D 89 03 A6 */	mtctr r12
/* 803F978C  4E 80 04 21 */	bctrl 
/* 803F9790  2C 03 00 01 */	cmpwi r3, 1
/* 803F9794  40 82 00 28 */	bne lbl_803F97BC
/* 803F9798  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 803F979C  2C 00 00 05 */	cmpwi r0, 5
/* 803F97A0  40 82 00 1C */	bne lbl_803F97BC
/* 803F97A4  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 803F97A8  7F 83 E3 78 */	mr r3, r28
/* 803F97AC  90 1E 00 00 */	stw r0, 0(r30)
/* 803F97B0  4B FF E3 69 */	bl mCD_ClearCardBgInfo
/* 803F97B4  3B E0 00 01 */	li r31, 1
/* 803F97B8  48 00 00 18 */	b lbl_803F97D0
lbl_803F97BC:
/* 803F97BC  2C 03 FF FF */	cmpwi r3, -1
/* 803F97C0  40 82 00 10 */	bne lbl_803F97D0
/* 803F97C4  7F 83 E3 78 */	mr r3, r28
/* 803F97C8  4B FF E3 51 */	bl mCD_ClearCardBgInfo
/* 803F97CC  3B E0 FF FF */	li r31, -1
lbl_803F97D0:
/* 803F97D0  2C 1F 00 00 */	cmpwi r31, 0
/* 803F97D4  41 82 00 54 */	beq lbl_803F9828
/* 803F97D8  3C 60 81 17 */	lis r3, work_p_1302@ha /* 0x81171604@ha */
/* 803F97DC  38 63 16 04 */	addi r3, r3, work_p_1302@l /* 0x81171604@l */
/* 803F97E0  80 63 00 00 */	lwz r3, 0(r3)
/* 803F97E4  28 03 00 00 */	cmplwi r3, 0
/* 803F97E8  41 82 00 40 */	beq lbl_803F9828
/* 803F97EC  4B FC 2C C9 */	bl zelda_free
/* 803F97F0  3C 60 81 17 */	lis r3, work_p_1302@ha /* 0x81171604@ha */
/* 803F97F4  38 00 00 00 */	li r0, 0
/* 803F97F8  90 03 16 04 */	stw r0, work_p_1302@l(r3)  /* 0x81171604@l */
/* 803F97FC  48 00 00 2C */	b lbl_803F9828
lbl_803F9800:
/* 803F9800  3C 60 81 17 */	lis r3, work_p_1302@ha /* 0x81171604@ha */
/* 803F9804  38 63 16 04 */	addi r3, r3, work_p_1302@l /* 0x81171604@l */
/* 803F9808  80 63 00 00 */	lwz r3, 0(r3)
/* 803F980C  28 03 00 00 */	cmplwi r3, 0
/* 803F9810  41 82 00 14 */	beq lbl_803F9824
/* 803F9814  4B FC 2C A1 */	bl zelda_free
/* 803F9818  3C 60 81 17 */	lis r3, work_p_1302@ha /* 0x81171604@ha */
/* 803F981C  38 00 00 00 */	li r0, 0
/* 803F9820  90 03 16 04 */	stw r0, work_p_1302@l(r3)  /* 0x81171604@l */
lbl_803F9824:
/* 803F9824  3B E0 FF FF */	li r31, -1
lbl_803F9828:
/* 803F9828  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803F982C  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803F9830  2C 00 00 02 */	cmpwi r0, 2
/* 803F9834  41 80 00 38 */	blt lbl_803F986C
/* 803F9838  2C 1F FF FF */	cmpwi r31, -1
/* 803F983C  40 82 00 18 */	bne lbl_803F9854
/* 803F9840  38 60 00 06 */	li r3, 6
/* 803F9844  4B FF DD FD */	bl mCD_OnErrInfo
/* 803F9848  80 7D 00 00 */	lwz r3, 0(r29)
/* 803F984C  4B FF DE 45 */	bl mCD_SetErrResult
/* 803F9850  48 00 00 1C */	b lbl_803F986C
lbl_803F9854:
/* 803F9854  2C 1F 00 01 */	cmpwi r31, 1
/* 803F9858  40 82 00 14 */	bne lbl_803F986C
/* 803F985C  38 60 00 06 */	li r3, 6
/* 803F9860  4B FF DE 09 */	bl mCD_OffErrInfo
/* 803F9864  80 7D 00 00 */	lwz r3, 0(r29)
/* 803F9868  4B FF DE 29 */	bl mCD_SetErrResult
lbl_803F986C:
/* 803F986C  7F E3 FB 78 */	mr r3, r31
/* 803F9870  39 61 00 30 */	addi r11, r1, 0x30
/* 803F9874  4B CA 16 A5 */	bl func_8009AF18
/* 803F9878  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F987C  7C 08 03 A6 */	mtlr r0
/* 803F9880  38 21 00 30 */	addi r1, r1, 0x30
/* 803F9884  4E 80 00 20 */	blr 
