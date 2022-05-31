lbl_804F7474:
/* 804F7474  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F7478  7C 08 02 A6 */	mflr r0
/* 804F747C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F7480  39 61 00 40 */	addi r11, r1, 0x40
/* 804F7484  4B BA 3A 49 */	bl func_8009AECC
/* 804F7488  7C 7D 1B 78 */	mr r29, r3
/* 804F748C  7C 9E 23 78 */	mr r30, r4
/* 804F7490  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804F7494  7C BF 2B 78 */	mr r31, r5
/* 804F7498  7C DB 33 78 */	mr r27, r6
/* 804F749C  3B 9D 01 74 */	addi r28, r29, 0x174
/* 804F74A0  2C 00 00 58 */	cmpwi r0, 0x58
/* 804F74A4  40 82 00 3C */	bne lbl_804F74E0
/* 804F74A8  3C 80 80 65 */	lis r4, lit_7320@ha /* 0x80648350@ha */
/* 804F74AC  7F 83 E3 78 */	mr r3, r28
/* 804F74B0  C0 24 83 50 */	lfs f1, lit_7320@l(r4)  /* 0x80648350@l */
/* 804F74B4  4B FE 01 4D */	bl Player_actor_Check_AnimationFrame
/* 804F74B8  2C 03 00 00 */	cmpwi r3, 0
/* 804F74BC  41 82 01 38 */	beq lbl_804F75F4
/* 804F74C0  2C 1B 00 3E */	cmpwi r27, 0x3e
/* 804F74C4  3B 80 00 53 */	li r28, 0x53
/* 804F74C8  41 82 00 0C */	beq lbl_804F74D4
/* 804F74CC  3B 60 00 00 */	li r27, 0
/* 804F74D0  48 00 00 B4 */	b lbl_804F7584
lbl_804F74D4:
/* 804F74D4  3B 60 00 03 */	li r27, 3
/* 804F74D8  48 00 00 AC */	b lbl_804F7584
/* 804F74DC  48 00 01 18 */	b lbl_804F75F4
lbl_804F74E0:
/* 804F74E0  3C 80 80 65 */	lis r4, lit_12238@ha /* 0x80648538@ha */
/* 804F74E4  7F 83 E3 78 */	mr r3, r28
/* 804F74E8  C0 24 85 38 */	lfs f1, lit_12238@l(r4)  /* 0x80648538@l */
/* 804F74EC  4B FE 01 15 */	bl Player_actor_Check_AnimationFrame
/* 804F74F0  2C 03 00 00 */	cmpwi r3, 0
/* 804F74F4  41 82 00 10 */	beq lbl_804F7504
/* 804F74F8  3B 80 00 52 */	li r28, 0x52
/* 804F74FC  3B 60 00 00 */	li r27, 0
/* 804F7500  48 00 00 84 */	b lbl_804F7584
lbl_804F7504:
/* 804F7504  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804F7508  7F 83 E3 78 */	mr r3, r28
/* 804F750C  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804F7510  4B FE 00 F1 */	bl Player_actor_Check_AnimationFrame
/* 804F7514  2C 03 00 00 */	cmpwi r3, 0
/* 804F7518  41 82 00 10 */	beq lbl_804F7528
/* 804F751C  3B 80 00 52 */	li r28, 0x52
/* 804F7520  3B 60 00 01 */	li r27, 1
/* 804F7524  48 00 00 60 */	b lbl_804F7584
lbl_804F7528:
/* 804F7528  3C 80 80 64 */	lis r4, lit_4068@ha /* 0x80647A90@ha */
/* 804F752C  7F 83 E3 78 */	mr r3, r28
/* 804F7530  C0 24 7A 90 */	lfs f1, lit_4068@l(r4)  /* 0x80647A90@l */
/* 804F7534  4B FE 00 CD */	bl Player_actor_Check_AnimationFrame
/* 804F7538  2C 03 00 00 */	cmpwi r3, 0
/* 804F753C  41 82 00 10 */	beq lbl_804F754C
/* 804F7540  3B 80 00 52 */	li r28, 0x52
/* 804F7544  3B 60 00 02 */	li r27, 2
/* 804F7548  48 00 00 3C */	b lbl_804F7584
lbl_804F754C:
/* 804F754C  3C 80 80 65 */	lis r4, lit_12239@ha /* 0x8064853C@ha */
/* 804F7550  7F 83 E3 78 */	mr r3, r28
/* 804F7554  C0 24 85 3C */	lfs f1, lit_12239@l(r4)  /* 0x8064853C@l */
/* 804F7558  4B FE 00 A9 */	bl Player_actor_Check_AnimationFrame
/* 804F755C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7560  41 82 00 94 */	beq lbl_804F75F4
/* 804F7564  2C 1B 00 3E */	cmpwi r27, 0x3e
/* 804F7568  3B 80 00 53 */	li r28, 0x53
/* 804F756C  41 82 00 0C */	beq lbl_804F7578
/* 804F7570  3B 60 00 00 */	li r27, 0
/* 804F7574  48 00 00 10 */	b lbl_804F7584
lbl_804F7578:
/* 804F7578  3B 60 00 03 */	li r27, 3
/* 804F757C  48 00 00 08 */	b lbl_804F7584
/* 804F7580  48 00 00 74 */	b lbl_804F75F4
lbl_804F7584:
/* 804F7584  80 DF 00 00 */	lwz r6, 0(r31)
/* 804F7588  38 61 00 08 */	addi r3, r1, 8
/* 804F758C  80 BF 00 04 */	lwz r5, 4(r31)
/* 804F7590  38 80 00 00 */	li r4, 0
/* 804F7594  80 1F 00 08 */	lwz r0, 8(r31)
/* 804F7598  90 C1 00 08 */	stw r6, 8(r1)
/* 804F759C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804F75A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F75A4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804F75A8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804F75AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804F75B0  4B E9 1A FD */	bl mCoBG_Wpos2Attribute
/* 804F75B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F75B8  7C 69 07 34 */	extsh r9, r3
/* 804F75BC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804F75C0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F75C4  3C 83 00 02 */	addis r4, r3, 2
/* 804F75C8  7F C7 F3 78 */	mr r7, r30
/* 804F75CC  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 804F75D0  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F75D4  7F 83 E3 78 */	mr r3, r28
/* 804F75D8  7F 6A DB 78 */	mr r10, r27
/* 804F75DC  81 84 00 00 */	lwz r12, 0(r4)
/* 804F75E0  38 81 00 14 */	addi r4, r1, 0x14
/* 804F75E4  A8 DD 00 DE */	lha r6, 0xde(r29)
/* 804F75E8  38 A0 00 02 */	li r5, 2
/* 804F75EC  7D 89 03 A6 */	mtctr r12
/* 804F75F0  4E 80 04 21 */	bctrl 
lbl_804F75F4:
/* 804F75F4  39 61 00 40 */	addi r11, r1, 0x40
/* 804F75F8  4B BA 39 21 */	bl func_8009AF18
/* 804F75FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F7600  7C 08 03 A6 */	mtlr r0
/* 804F7604  38 21 00 40 */	addi r1, r1, 0x40
/* 804F7608  4E 80 00 20 */	blr 
