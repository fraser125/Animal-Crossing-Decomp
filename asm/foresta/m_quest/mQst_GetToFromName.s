lbl_803E344C:
/* 803E344C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3450  7C 08 02 A6 */	mflr r0
/* 803E3454  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3458  39 61 00 20 */	addi r11, r1, 0x20
/* 803E345C  4B CB 7A 75 */	bl func_8009AED0
/* 803E3460  7C BD 2B 79 */	or. r29, r5, r5
/* 803E3464  7C 7C 1B 78 */	mr r28, r3
/* 803E3468  7C 9F 23 78 */	mr r31, r4
/* 803E346C  3B C0 00 00 */	li r30, 0
/* 803E3470  41 80 00 D8 */	blt lbl_803E3548
/* 803E3474  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803E3478  40 80 00 D0 */	bge lbl_803E3548
/* 803E347C  7F A3 EB 78 */	mr r3, r29
/* 803E3480  4B FF F9 21 */	bl mQst_GetDeliveryIdxbyItemIdx
/* 803E3484  2C 03 FF FF */	cmpwi r3, -1
/* 803E3488  41 82 00 40 */	beq lbl_803E34C8
/* 803E348C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E3490  1C 83 00 28 */	mulli r4, r3, 0x28
/* 803E3494  7F 83 E3 78 */	mr r3, r28
/* 803E3498  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E349C  3C A5 00 02 */	addis r5, r5, 2
/* 803E34A0  80 05 61 3C */	lwz r0, 0x613c(r5)
/* 803E34A4  3B C4 00 94 */	addi r30, r4, 0x94
/* 803E34A8  7F C0 F2 14 */	add r30, r0, r30
/* 803E34AC  38 9E 00 0C */	addi r4, r30, 0xc
/* 803E34B0  4B FE E4 A1 */	bl mNpc_GetNpcWorldNameAnm
/* 803E34B4  7F E3 FB 78 */	mr r3, r31
/* 803E34B8  38 9E 00 1A */	addi r4, r30, 0x1a
/* 803E34BC  4B FE E4 95 */	bl mNpc_GetNpcWorldNameAnm
/* 803E34C0  3B C0 00 01 */	li r30, 1
/* 803E34C4  48 00 00 84 */	b lbl_803E3548
lbl_803E34C8:
/* 803E34C8  7F A3 EB 78 */	mr r3, r29
/* 803E34CC  4B FF F9 45 */	bl mQst_GetErrandIdxbyItemIdx
/* 803E34D0  2C 03 FF FF */	cmpwi r3, -1
/* 803E34D4  41 82 00 74 */	beq lbl_803E3548
/* 803E34D8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E34DC  1C 83 00 58 */	mulli r4, r3, 0x58
/* 803E34E0  7F 83 E3 78 */	mr r3, r28
/* 803E34E4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E34E8  3C A5 00 02 */	addis r5, r5, 2
/* 803E34EC  80 05 61 3C */	lwz r0, 0x613c(r5)
/* 803E34F0  3B C4 02 EC */	addi r30, r4, 0x2ec
/* 803E34F4  7F C0 F2 14 */	add r30, r0, r30
/* 803E34F8  38 9E 00 0C */	addi r4, r30, 0xc
/* 803E34FC  4B FE E4 55 */	bl mNpc_GetNpcWorldNameAnm
/* 803E3500  4B FB 77 35 */	bl mEv_CheckFirstJob
/* 803E3504  2C 03 00 01 */	cmpwi r3, 1
/* 803E3508  40 82 00 30 */	bne lbl_803E3538
/* 803E350C  88 1E 00 2A */	lbz r0, 0x2a(r30)
/* 803E3510  54 00 E8 06 */	rlwinm r0, r0, 0x1d, 0, 3
/* 803E3514  7C 00 EE 70 */	srawi r0, r0, 0x1d
/* 803E3518  7C 00 07 74 */	extsb r0, r0
/* 803E351C  2C 00 00 02 */	cmpwi r0, 2
/* 803E3520  40 82 00 18 */	bne lbl_803E3538
/* 803E3524  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D008@ha */
/* 803E3528  7F E3 FB 78 */	mr r3, r31
/* 803E352C  38 84 D0 08 */	addi r4, r4, 0xD008 /* 0x0000D008@l */
/* 803E3530  4B FE E5 C9 */	bl mNpc_GetActorWorldName
/* 803E3534  48 00 00 10 */	b lbl_803E3544
lbl_803E3538:
/* 803E3538  7F E3 FB 78 */	mr r3, r31
/* 803E353C  38 9E 00 1A */	addi r4, r30, 0x1a
/* 803E3540  4B FE E4 11 */	bl mNpc_GetNpcWorldNameAnm
lbl_803E3544:
/* 803E3544  3B C0 00 01 */	li r30, 1
lbl_803E3548:
/* 803E3548  7F C3 F3 78 */	mr r3, r30
/* 803E354C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3550  4B CB 79 CD */	bl func_8009AF1C
/* 803E3554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E3558  7C 08 03 A6 */	mtlr r0
/* 803E355C  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3560  4E 80 00 20 */	blr 
