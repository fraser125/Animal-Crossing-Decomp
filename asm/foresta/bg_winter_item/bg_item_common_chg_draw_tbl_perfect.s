lbl_804C49C8:
/* 804C49C8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804C49CC  7C 08 02 A6 */	mflr r0
/* 804C49D0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804C49D4  39 61 00 70 */	addi r11, r1, 0x70
/* 804C49D8  4B BD 64 D5 */	bl func_8009AEAC
/* 804C49DC  7C 98 23 78 */	mr r24, r4
/* 804C49E0  38 00 00 04 */	li r0, 4
/* 804C49E4  3C 98 00 01 */	addis r4, r24, 1
/* 804C49E8  7C 77 1B 78 */	mr r23, r3
/* 804C49EC  7C B9 2B 78 */	mr r25, r5
/* 804C49F0  83 64 25 9C */	lwz r27, 0x259c(r4)
/* 804C49F4  38 A4 39 F4 */	addi r5, r4, 0x39f4
/* 804C49F8  83 84 25 54 */	lwz r28, 0x2554(r4)
/* 804C49FC  38 80 00 00 */	li r4, 0
/* 804C4A00  7C 09 03 A6 */	mtctr r0
lbl_804C4A04:
/* 804C4A04  80 05 00 00 */	lwz r0, 0(r5)
/* 804C4A08  38 A5 00 04 */	addi r5, r5, 4
/* 804C4A0C  1C 60 48 54 */	mulli r3, r0, 0x4854
/* 804C4A10  38 03 48 50 */	addi r0, r3, 0x4850
/* 804C4A14  7C 98 03 2E */	sthx r4, r24, r0
/* 804C4A18  42 00 FF EC */	bdnz lbl_804C4A04
/* 804C4A1C  57 3E 07 BF */	clrlwi. r30, r25, 0x1e
/* 804C4A20  41 82 00 10 */	beq lbl_804C4A30
/* 804C4A24  3C 78 00 01 */	addis r3, r24, 1
/* 804C4A28  38 63 37 D4 */	addi r3, r3, 0x37d4
/* 804C4A2C  4B FF B5 F9 */	bl bIT_actor_shin_effect_check
lbl_804C4A30:
/* 804C4A30  38 60 00 00 */	li r3, 0
/* 804C4A34  38 00 00 04 */	li r0, 4
/* 804C4A38  7C 65 1B 78 */	mr r5, r3
/* 804C4A3C  38 E1 00 28 */	addi r7, r1, 0x28
/* 804C4A40  38 C1 00 18 */	addi r6, r1, 0x18
/* 804C4A44  38 81 00 08 */	addi r4, r1, 8
/* 804C4A48  39 00 FF FE */	li r8, -2
/* 804C4A4C  7C 09 03 A6 */	mtctr r0
lbl_804C4A50:
/* 804C4A50  7D 07 19 2E */	stwx r8, r7, r3
/* 804C4A54  7D 06 19 2E */	stwx r8, r6, r3
/* 804C4A58  7C A4 19 2E */	stwx r5, r4, r3
/* 804C4A5C  38 63 00 04 */	addi r3, r3, 4
/* 804C4A60  42 00 FF F0 */	bdnz lbl_804C4A50
/* 804C4A64  57 20 07 BD */	rlwinm. r0, r25, 0, 0x1e, 0x1e
/* 804C4A68  41 82 01 EC */	beq lbl_804C4C54
/* 804C4A6C  3A C1 00 28 */	addi r22, r1, 0x28
/* 804C4A70  3B E1 00 18 */	addi r31, r1, 0x18
/* 804C4A74  3A 61 00 08 */	addi r19, r1, 8
/* 804C4A78  3B A0 00 00 */	li r29, 0
/* 804C4A7C  3A A0 00 00 */	li r21, 0
/* 804C4A80  3A 80 00 01 */	li r20, 1
/* 804C4A84  48 00 00 44 */	b lbl_804C4AC8
lbl_804C4A88:
/* 804C4A88  7F A3 EB 78 */	mr r3, r29
/* 804C4A8C  4B EE 2E F9 */	bl mFI_GetOldItemTableIdx
/* 804C4A90  7C 76 A9 2E */	stwx r3, r22, r21
/* 804C4A94  7C 16 A8 2E */	lwzx r0, r22, r21
/* 804C4A98  2C 00 00 00 */	cmpwi r0, 0
/* 804C4A9C  41 80 00 24 */	blt lbl_804C4AC0
/* 804C4AA0  54 03 10 3A */	slwi r3, r0, 2
/* 804C4AA4  3C 63 00 01 */	addis r3, r3, 1
/* 804C4AA8  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804C4AAC  7C 18 18 2E */	lwzx r0, r24, r3
/* 804C4AB0  7C 1F A9 2E */	stwx r0, r31, r21
/* 804C4AB4  7C 1F A8 2E */	lwzx r0, r31, r21
/* 804C4AB8  54 00 10 3A */	slwi r0, r0, 2
/* 804C4ABC  7E 93 01 2E */	stwx r20, r19, r0
lbl_804C4AC0:
/* 804C4AC0  3B BD 00 01 */	addi r29, r29, 1
/* 804C4AC4  3A B5 00 04 */	addi r21, r21, 4
lbl_804C4AC8:
/* 804C4AC8  7C 1D E0 00 */	cmpw r29, r28
/* 804C4ACC  41 80 FF BC */	blt lbl_804C4A88
/* 804C4AD0  39 21 00 28 */	addi r9, r1, 0x28
/* 804C4AD4  39 60 00 00 */	li r11, 0
/* 804C4AD8  38 60 00 00 */	li r3, 0
/* 804C4ADC  38 80 00 00 */	li r4, 0
/* 804C4AE0  48 00 00 7C */	b lbl_804C4B5C
lbl_804C4AE4:
/* 804C4AE4  7C 09 20 2E */	lwzx r0, r9, r4
/* 804C4AE8  2C 00 00 00 */	cmpwi r0, 0
/* 804C4AEC  40 80 00 64 */	bge lbl_804C4B50
/* 804C4AF0  38 00 00 04 */	li r0, 4
/* 804C4AF4  39 41 00 08 */	addi r10, r1, 8
/* 804C4AF8  39 80 00 00 */	li r12, 0
/* 804C4AFC  38 A0 00 00 */	li r5, 0
/* 804C4B00  7C 09 03 A6 */	mtctr r0
lbl_804C4B04:
/* 804C4B04  7C 0A 28 2E */	lwzx r0, r10, r5
/* 804C4B08  2C 00 00 00 */	cmpwi r0, 0
/* 804C4B0C  40 82 00 38 */	bne lbl_804C4B44
/* 804C4B10  7C D8 1A 14 */	add r6, r24, r3
/* 804C4B14  38 E1 00 18 */	addi r7, r1, 0x18
/* 804C4B18  1C 0C 48 54 */	mulli r0, r12, 0x4854
/* 804C4B1C  39 00 00 01 */	li r8, 1
/* 804C4B20  3C C6 00 01 */	addis r6, r6, 1
/* 804C4B24  7D 0A 29 2E */	stwx r8, r10, r5
/* 804C4B28  88 A6 25 58 */	lbz r5, 0x2558(r6)
/* 804C4B2C  7D 18 02 14 */	add r8, r24, r0
/* 804C4B30  98 A8 48 52 */	stb r5, 0x4852(r8)
/* 804C4B34  88 06 25 59 */	lbz r0, 0x2559(r6)
/* 804C4B38  7D 87 21 2E */	stwx r12, r7, r4
/* 804C4B3C  98 08 48 53 */	stb r0, 0x4853(r8)
/* 804C4B40  48 00 00 10 */	b lbl_804C4B50
lbl_804C4B44:
/* 804C4B44  39 8C 00 01 */	addi r12, r12, 1
/* 804C4B48  38 A5 00 04 */	addi r5, r5, 4
/* 804C4B4C  42 00 FF B8 */	bdnz lbl_804C4B04
lbl_804C4B50:
/* 804C4B50  39 6B 00 01 */	addi r11, r11, 1
/* 804C4B54  38 63 00 10 */	addi r3, r3, 0x10
/* 804C4B58  38 84 00 04 */	addi r4, r4, 4
lbl_804C4B5C:
/* 804C4B5C  7C 0B E0 00 */	cmpw r11, r28
/* 804C4B60  41 80 FF 84 */	blt lbl_804C4AE4
/* 804C4B64  38 E1 00 18 */	addi r7, r1, 0x18
/* 804C4B68  38 C1 00 28 */	addi r6, r1, 0x28
/* 804C4B6C  39 20 00 00 */	li r9, 0
/* 804C4B70  38 60 00 00 */	li r3, 0
/* 804C4B74  38 A0 00 01 */	li r5, 1
/* 804C4B78  7F 89 03 A6 */	mtctr r28
/* 804C4B7C  2C 1C 00 00 */	cmpwi r28, 0
/* 804C4B80  40 81 00 3C */	ble lbl_804C4BBC
lbl_804C4B84:
/* 804C4B84  7C 06 18 2E */	lwzx r0, r6, r3
/* 804C4B88  3D 03 00 01 */	addis r8, r3, 1
/* 804C4B8C  7C 87 18 2E */	lwzx r4, r7, r3
/* 804C4B90  39 08 39 F4 */	addi r8, r8, 0x39f4
/* 804C4B94  2C 00 00 00 */	cmpwi r0, 0
/* 804C4B98  7C 98 41 2E */	stwx r4, r24, r8
/* 804C4B9C  40 80 00 08 */	bge lbl_804C4BA4
/* 804C4BA0  39 20 00 01 */	li r9, 1
lbl_804C4BA4:
/* 804C4BA4  7C 18 40 2E */	lwzx r0, r24, r8
/* 804C4BA8  38 63 00 04 */	addi r3, r3, 4
/* 804C4BAC  1C 80 48 54 */	mulli r4, r0, 0x4854
/* 804C4BB0  38 04 48 50 */	addi r0, r4, 0x4850
/* 804C4BB4  7C B8 03 2E */	sthx r5, r24, r0
/* 804C4BB8  42 00 FF CC */	bdnz lbl_804C4B84
lbl_804C4BBC:
/* 804C4BBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C4BC0  2C 09 00 00 */	cmpwi r9, 0
/* 804C4BC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C4BC8  3C 63 00 03 */	addis r3, r3, 3
/* 804C4BCC  8B 43 85 90 */	lbz r26, -0x7a70(r3)
/* 804C4BD0  40 82 00 0C */	bne lbl_804C4BDC
/* 804C4BD4  28 1A 00 00 */	cmplwi r26, 0
/* 804C4BD8  41 82 00 7C */	beq lbl_804C4C54
lbl_804C4BDC:
/* 804C4BDC  3B E1 00 28 */	addi r31, r1, 0x28
/* 804C4BE0  3E 98 00 01 */	addis r20, r24, 1
/* 804C4BE4  3B A0 00 00 */	li r29, 0
/* 804C4BE8  3A C0 00 00 */	li r22, 0
/* 804C4BEC  3A A0 00 00 */	li r21, 0
/* 804C4BF0  3A 60 00 01 */	li r19, 1
/* 804C4BF4  48 00 00 58 */	b lbl_804C4C4C
lbl_804C4BF8:
/* 804C4BF8  7C 1F A8 2E */	lwzx r0, r31, r21
/* 804C4BFC  2C 00 00 00 */	cmpwi r0, 0
/* 804C4C00  41 80 00 10 */	blt lbl_804C4C10
/* 804C4C04  7E 60 E8 30 */	slw r0, r19, r29
/* 804C4C08  7F 40 00 39 */	and. r0, r26, r0
/* 804C4C0C  41 82 00 34 */	beq lbl_804C4C40
lbl_804C4C10:
/* 804C4C10  3C 75 00 01 */	addis r3, r21, 1
/* 804C4C14  3C B6 00 01 */	addis r5, r22, 1
/* 804C4C18  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804C4C1C  80 F4 25 98 */	lwz r7, 0x2598(r20)
/* 804C4C20  7C 18 18 2E */	lwzx r0, r24, r3
/* 804C4C24  38 A5 25 58 */	addi r5, r5, 0x2558
/* 804C4C28  7E E3 BB 78 */	mr r3, r23
/* 804C4C2C  7F 66 DB 78 */	mr r6, r27
/* 804C4C30  1C 00 48 54 */	mulli r0, r0, 0x4854
/* 804C4C34  7C B8 2A 14 */	add r5, r24, r5
/* 804C4C38  7C 98 02 14 */	add r4, r24, r0
/* 804C4C3C  4B FF FB 35 */	bl bg_item_common_set_draw_tbl
lbl_804C4C40:
/* 804C4C40  3B BD 00 01 */	addi r29, r29, 1
/* 804C4C44  3A D6 00 10 */	addi r22, r22, 0x10
/* 804C4C48  3A B5 00 04 */	addi r21, r21, 4
lbl_804C4C4C:
/* 804C4C4C  7C 1D E0 00 */	cmpw r29, r28
/* 804C4C50  41 80 FF A8 */	blt lbl_804C4BF8
lbl_804C4C54:
/* 804C4C54  57 20 07 FF */	clrlwi. r0, r25, 0x1f
/* 804C4C58  41 82 00 5C */	beq lbl_804C4CB4
/* 804C4C5C  3E B8 00 01 */	addis r21, r24, 1
/* 804C4C60  3A 60 00 00 */	li r19, 0
/* 804C4C64  3B 20 00 00 */	li r25, 0
/* 804C4C68  3B 40 00 00 */	li r26, 0
/* 804C4C6C  48 00 00 40 */	b lbl_804C4CAC
lbl_804C4C70:
/* 804C4C70  3C 7A 00 01 */	addis r3, r26, 1
/* 804C4C74  3C B9 00 01 */	addis r5, r25, 1
/* 804C4C78  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804C4C7C  80 F5 25 98 */	lwz r7, 0x2598(r21)
/* 804C4C80  7C 18 18 2E */	lwzx r0, r24, r3
/* 804C4C84  38 A5 25 58 */	addi r5, r5, 0x2558
/* 804C4C88  7E E3 BB 78 */	mr r3, r23
/* 804C4C8C  7F 66 DB 78 */	mr r6, r27
/* 804C4C90  1C 00 48 54 */	mulli r0, r0, 0x4854
/* 804C4C94  7C B8 2A 14 */	add r5, r24, r5
/* 804C4C98  7C 98 02 14 */	add r4, r24, r0
/* 804C4C9C  4B FF FA D5 */	bl bg_item_common_set_draw_tbl
/* 804C4CA0  3A 73 00 01 */	addi r19, r19, 1
/* 804C4CA4  3B 39 00 10 */	addi r25, r25, 0x10
/* 804C4CA8  3B 5A 00 04 */	addi r26, r26, 4
lbl_804C4CAC:
/* 804C4CAC  7C 13 E0 00 */	cmpw r19, r28
/* 804C4CB0  41 80 FF C0 */	blt lbl_804C4C70
lbl_804C4CB4:
/* 804C4CB4  2C 1E 00 00 */	cmpwi r30, 0
/* 804C4CB8  41 82 00 10 */	beq lbl_804C4CC8
/* 804C4CBC  7F 03 C3 78 */	mr r3, r24
/* 804C4CC0  7F 84 E3 78 */	mr r4, r28
/* 804C4CC4  4B FF FB 4D */	bl bg_shin_effect_being_check
lbl_804C4CC8:
/* 804C4CC8  39 61 00 70 */	addi r11, r1, 0x70
/* 804C4CCC  4B BD 62 2D */	bl func_8009AEF8
/* 804C4CD0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804C4CD4  7C 08 03 A6 */	mtlr r0
/* 804C4CD8  38 21 00 70 */	addi r1, r1, 0x70
/* 804C4CDC  4E 80 00 20 */	blr 
