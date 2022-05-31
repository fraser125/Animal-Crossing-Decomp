lbl_804EC5C4:
/* 804EC5C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EC5C8  7C 08 02 A6 */	mflr r0
/* 804EC5CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EC5D0  39 61 00 40 */	addi r11, r1, 0x40
/* 804EC5D4  4B BA E8 DD */	bl func_8009AEB0
/* 804EC5D8  7C 7D 1B 78 */	mr r29, r3
/* 804EC5DC  7C 9E 23 78 */	mr r30, r4
/* 804EC5E0  4B FE 84 A9 */	bl Player_actor_GetController_move_percentR
/* 804EC5E4  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804EC5E8  C0 03 6C 4C */	lfs f0, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804EC5EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EC5F0  40 81 01 D4 */	ble lbl_804EC7C4
/* 804EC5F4  7F C3 F3 78 */	mr r3, r30
/* 804EC5F8  4B FE AC DD */	bl Player_actor_Get_ControllerAngle
/* 804EC5FC  7C 74 1B 78 */	mr r20, r3
/* 804EC600  A8 7D 00 36 */	lha r3, 0x36(r29)
/* 804EC604  3B E0 00 00 */	li r31, 0
/* 804EC608  4B FE AB ED */	bl Player_actor_Get_Direction_fromAngle
/* 804EC60C  7E 85 07 34 */	extsh r5, r20
/* 804EC610  3A 80 8A AA */	li r20, -30038
/* 804EC614  7E 88 2A 78 */	xor r8, r20, r5
/* 804EC618  38 00 75 56 */	li r0, 0x7556
/* 804EC61C  7C B5 02 78 */	xor r21, r5, r0
/* 804EC620  3A C0 0A AA */	li r22, 0xaaa
/* 804EC624  7D 04 0E 70 */	srawi r4, r8, 1
/* 804EC628  38 C0 F5 56 */	li r6, -2730
/* 804EC62C  7E D8 2A 78 */	xor r24, r22, r5
/* 804EC630  7E A0 0E 70 */	srawi r0, r21, 1
/* 804EC634  7C BA 32 78 */	xor r26, r5, r6
/* 804EC638  3B 60 4A AA */	li r27, 0x4aaa
/* 804EC63C  7F 17 0E 70 */	srawi r23, r24, 1
/* 804EC640  38 C0 35 56 */	li r6, 0x3556
/* 804EC644  7F 6C 2A 78 */	xor r12, r27, r5
/* 804EC648  7F 59 0E 70 */	srawi r25, r26, 1
/* 804EC64C  7C AA 32 78 */	xor r10, r5, r6
/* 804EC650  39 20 CA AA */	li r9, -13654
/* 804EC654  7D 9C 0E 70 */	srawi r28, r12, 1
/* 804EC658  38 C0 B5 56 */	li r6, -19114
/* 804EC65C  7D 27 2A 78 */	xor r7, r9, r5
/* 804EC660  7D 4B 0E 70 */	srawi r11, r10, 1
/* 804EC664  7C A6 32 78 */	xor r6, r5, r6
/* 804EC668  7D 14 A0 38 */	and r20, r8, r20
/* 804EC66C  7C E8 0E 70 */	srawi r8, r7, 1
/* 804EC670  7E B5 28 38 */	and r21, r21, r5
/* 804EC674  7F 18 B0 38 */	and r24, r24, r22
/* 804EC678  7F 5A 28 38 */	and r26, r26, r5
/* 804EC67C  7D 8C D8 38 */	and r12, r12, r27
/* 804EC680  7D 4A 28 38 */	and r10, r10, r5
/* 804EC684  7C E7 48 38 */	and r7, r7, r9
/* 804EC688  7E 94 20 50 */	subf r20, r20, r4
/* 804EC68C  7E D5 00 50 */	subf r22, r21, r0
/* 804EC690  7F 18 B8 50 */	subf r24, r24, r23
/* 804EC694  7F 7A C8 50 */	subf r27, r26, r25
/* 804EC698  7D 8C E0 50 */	subf r12, r12, r28
/* 804EC69C  7D 2A 58 50 */	subf r9, r10, r11
/* 804EC6A0  7C E7 40 50 */	subf r7, r7, r8
/* 804EC6A4  2C 03 00 01 */	cmpwi r3, 1
/* 804EC6A8  7C C4 0E 70 */	srawi r4, r6, 1
/* 804EC6AC  7C C0 28 38 */	and r0, r6, r5
/* 804EC6B0  56 85 0F FE */	srwi r5, r20, 0x1f
/* 804EC6B4  7C 00 20 50 */	subf r0, r0, r4
/* 804EC6B8  56 C4 0F FE */	srwi r4, r22, 0x1f
/* 804EC6BC  57 06 0F FE */	srwi r6, r24, 0x1f
/* 804EC6C0  57 68 0F FE */	srwi r8, r27, 0x1f
/* 804EC6C4  55 8A 0F FE */	srwi r10, r12, 0x1f
/* 804EC6C8  55 29 0F FE */	srwi r9, r9, 0x1f
/* 804EC6CC  54 E7 0F FE */	srwi r7, r7, 0x1f
/* 804EC6D0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 804EC6D4  41 82 00 0C */	beq lbl_804EC6E0
/* 804EC6D8  2C 03 00 02 */	cmpwi r3, 2
/* 804EC6DC  40 82 00 34 */	bne lbl_804EC710
lbl_804EC6E0:
/* 804EC6E0  2C 05 00 00 */	cmpwi r5, 0
/* 804EC6E4  40 82 00 0C */	bne lbl_804EC6F0
/* 804EC6E8  2C 04 00 00 */	cmpwi r4, 0
/* 804EC6EC  41 82 00 0C */	beq lbl_804EC6F8
lbl_804EC6F0:
/* 804EC6F0  3B E0 00 03 */	li r31, 3
/* 804EC6F4  48 00 00 48 */	b lbl_804EC73C
lbl_804EC6F8:
/* 804EC6F8  2C 08 00 00 */	cmpwi r8, 0
/* 804EC6FC  41 82 00 40 */	beq lbl_804EC73C
/* 804EC700  2C 06 00 00 */	cmpwi r6, 0
/* 804EC704  41 82 00 38 */	beq lbl_804EC73C
/* 804EC708  3B E0 00 04 */	li r31, 4
/* 804EC70C  48 00 00 30 */	b lbl_804EC73C
lbl_804EC710:
/* 804EC710  2C 09 00 00 */	cmpwi r9, 0
/* 804EC714  41 82 00 14 */	beq lbl_804EC728
/* 804EC718  2C 0A 00 00 */	cmpwi r10, 0
/* 804EC71C  41 82 00 0C */	beq lbl_804EC728
/* 804EC720  3B E0 00 01 */	li r31, 1
/* 804EC724  48 00 00 18 */	b lbl_804EC73C
lbl_804EC728:
/* 804EC728  2C 00 00 00 */	cmpwi r0, 0
/* 804EC72C  41 82 00 10 */	beq lbl_804EC73C
/* 804EC730  2C 07 00 00 */	cmpwi r7, 0
/* 804EC734  41 82 00 08 */	beq lbl_804EC73C
/* 804EC738  3B E0 00 02 */	li r31, 2
lbl_804EC73C:
/* 804EC73C  2C 1F 00 00 */	cmpwi r31, 0
/* 804EC740  41 82 00 78 */	beq lbl_804EC7B8
/* 804EC744  80 1D 0D 18 */	lwz r0, 0xd18(r29)
/* 804EC748  2C 00 00 00 */	cmpwi r0, 0
/* 804EC74C  41 82 00 80 */	beq lbl_804EC7CC
/* 804EC750  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804EC754  38 60 00 01 */	li r3, 1
/* 804EC758  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804EC75C  3C 84 00 02 */	addis r4, r4, 2
/* 804EC760  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 804EC764  28 04 00 00 */	cmplwi r4, 0
/* 804EC768  41 82 00 18 */	beq lbl_804EC780
/* 804EC76C  81 84 00 38 */	lwz r12, 0x38(r4)
/* 804EC770  7F A3 EB 78 */	mr r3, r29
/* 804EC774  7F E4 FB 78 */	mr r4, r31
/* 804EC778  7D 89 03 A6 */	mtctr r12
/* 804EC77C  4E 80 04 21 */	bctrl 
lbl_804EC780:
/* 804EC780  2C 03 00 01 */	cmpwi r3, 1
/* 804EC784  40 82 00 18 */	bne lbl_804EC79C
/* 804EC788  7F C3 F3 78 */	mr r3, r30
/* 804EC78C  7F E4 FB 78 */	mr r4, r31
/* 804EC790  38 A0 00 16 */	li r5, 0x16
/* 804EC794  48 00 00 F1 */	bl Player_actor_request_main_roll_bed
/* 804EC798  48 00 00 34 */	b lbl_804EC7CC
lbl_804EC79C:
/* 804EC79C  2C 03 00 02 */	cmpwi r3, 2
/* 804EC7A0  40 82 00 2C */	bne lbl_804EC7CC
/* 804EC7A4  7F C3 F3 78 */	mr r3, r30
/* 804EC7A8  7F E4 FB 78 */	mr r4, r31
/* 804EC7AC  38 A0 00 16 */	li r5, 0x16
/* 804EC7B0  48 00 04 59 */	bl Player_actor_request_main_standup_bed
/* 804EC7B4  48 00 00 18 */	b lbl_804EC7CC
lbl_804EC7B8:
/* 804EC7B8  38 00 00 01 */	li r0, 1
/* 804EC7BC  90 1D 0D 18 */	stw r0, 0xd18(r29)
/* 804EC7C0  48 00 00 0C */	b lbl_804EC7CC
lbl_804EC7C4:
/* 804EC7C4  38 00 00 01 */	li r0, 1
/* 804EC7C8  90 1D 0D 18 */	stw r0, 0xd18(r29)
lbl_804EC7CC:
/* 804EC7CC  39 61 00 40 */	addi r11, r1, 0x40
/* 804EC7D0  4B BA E7 2D */	bl func_8009AEFC
/* 804EC7D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EC7D8  7C 08 03 A6 */	mtlr r0
/* 804EC7DC  38 21 00 40 */	addi r1, r1, 0x40
/* 804EC7E0  4E 80 00 20 */	blr 
