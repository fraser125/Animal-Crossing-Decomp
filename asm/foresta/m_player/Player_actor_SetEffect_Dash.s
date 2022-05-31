lbl_804E7430:
/* 804E7430  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E7434  7C 08 02 A6 */	mflr r0
/* 804E7438  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E743C  39 61 00 38 */	addi r11, r1, 0x38
/* 804E7440  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 804E7444  4B BB 3A 91 */	bl func_8009AED4
/* 804E7448  7C 7F 1B 78 */	mr r31, r3
/* 804E744C  FF E0 10 90 */	fmr f31, f2
/* 804E7450  3B DF 01 74 */	addi r30, r31, 0x174
/* 804E7454  7C 9D 23 78 */	mr r29, r4
/* 804E7458  7F C3 F3 78 */	mr r3, r30
/* 804E745C  4B FF 01 A5 */	bl Player_actor_Check_AnimationFrame
/* 804E7460  2C 03 00 00 */	cmpwi r3, 0
/* 804E7464  41 82 00 80 */	beq lbl_804E74E4
/* 804E7468  A8 BF 11 08 */	lha r5, 0x1108(r31)
/* 804E746C  7F E3 FB 78 */	mr r3, r31
/* 804E7470  7F A4 EB 78 */	mr r4, r29
/* 804E7474  4B FF FE 0D */	bl Player_actor_SetEffectRemoveFlower_Dash
/* 804E7478  2C 03 00 00 */	cmpwi r3, 0
/* 804E747C  40 82 00 F4 */	bne lbl_804E7570
/* 804E7480  80 9F 10 F4 */	lwz r4, 0x10f4(r31)
/* 804E7484  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E7488  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 804E748C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E7490  3C 63 00 02 */	addis r3, r3, 2
/* 804E7494  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E7498  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E749C  7F A7 EB 78 */	mr r7, r29
/* 804E74A0  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E74A4  38 81 00 14 */	addi r4, r1, 0x14
/* 804E74A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E74AC  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E74B0  38 60 00 1F */	li r3, 0x1f
/* 804E74B4  38 A0 00 02 */	li r5, 2
/* 804E74B8  80 1F 10 FC */	lwz r0, 0x10fc(r31)
/* 804E74BC  39 40 00 00 */	li r10, 0
/* 804E74C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E74C4  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804E74C8  81 86 00 00 */	lwz r12, 0(r6)
/* 804E74CC  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804E74D0  A8 DF 11 08 */	lha r6, 0x1108(r31)
/* 804E74D4  7C 09 07 34 */	extsh r9, r0
/* 804E74D8  7D 89 03 A6 */	mtctr r12
/* 804E74DC  4E 80 04 21 */	bctrl 
/* 804E74E0  48 00 00 90 */	b lbl_804E7570
lbl_804E74E4:
/* 804E74E4  FC 20 F8 90 */	fmr f1, f31
/* 804E74E8  7F C3 F3 78 */	mr r3, r30
/* 804E74EC  4B FF 01 15 */	bl Player_actor_Check_AnimationFrame
/* 804E74F0  2C 03 00 00 */	cmpwi r3, 0
/* 804E74F4  41 82 00 7C */	beq lbl_804E7570
/* 804E74F8  A8 BF 11 02 */	lha r5, 0x1102(r31)
/* 804E74FC  7F E3 FB 78 */	mr r3, r31
/* 804E7500  7F A4 EB 78 */	mr r4, r29
/* 804E7504  4B FF FD 7D */	bl Player_actor_SetEffectRemoveFlower_Dash
/* 804E7508  2C 03 00 00 */	cmpwi r3, 0
/* 804E750C  40 82 00 64 */	bne lbl_804E7570
/* 804E7510  80 9F 10 E8 */	lwz r4, 0x10e8(r31)
/* 804E7514  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E7518  80 1F 10 EC */	lwz r0, 0x10ec(r31)
/* 804E751C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E7520  3C 63 00 02 */	addis r3, r3, 2
/* 804E7524  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E7528  90 81 00 08 */	stw r4, 8(r1)
/* 804E752C  7F A7 EB 78 */	mr r7, r29
/* 804E7530  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E7534  38 81 00 08 */	addi r4, r1, 8
/* 804E7538  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E753C  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E7540  38 60 00 1F */	li r3, 0x1f
/* 804E7544  38 A0 00 02 */	li r5, 2
/* 804E7548  80 1F 10 F0 */	lwz r0, 0x10f0(r31)
/* 804E754C  39 40 00 00 */	li r10, 0
/* 804E7550  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E7554  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804E7558  81 86 00 00 */	lwz r12, 0(r6)
/* 804E755C  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804E7560  A8 DF 11 02 */	lha r6, 0x1102(r31)
/* 804E7564  7C 09 07 34 */	extsh r9, r0
/* 804E7568  7D 89 03 A6 */	mtctr r12
/* 804E756C  4E 80 04 21 */	bctrl 
lbl_804E7570:
/* 804E7570  39 61 00 38 */	addi r11, r1, 0x38
/* 804E7574  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 804E7578  4B BB 39 A9 */	bl func_8009AF20
/* 804E757C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E7580  7C 08 03 A6 */	mtlr r0
/* 804E7584  38 21 00 40 */	addi r1, r1, 0x40
/* 804E7588  4E 80 00 20 */	blr 
