lbl_804B5B4C:
/* 804B5B4C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804B5B50  7C 08 02 A6 */	mflr r0
/* 804B5B54  90 01 00 74 */	stw r0, 0x74(r1)
/* 804B5B58  39 61 00 70 */	addi r11, r1, 0x70
/* 804B5B5C  4B BE 53 51 */	bl func_8009AEAC
/* 804B5B60  7C 98 23 78 */	mr r24, r4
/* 804B5B64  38 00 00 04 */	li r0, 4
/* 804B5B68  3C 98 00 01 */	addis r4, r24, 1
/* 804B5B6C  7C 77 1B 78 */	mr r23, r3
/* 804B5B70  7C B9 2B 78 */	mr r25, r5
/* 804B5B74  83 64 25 9C */	lwz r27, 0x259c(r4)
/* 804B5B78  38 A4 39 F4 */	addi r5, r4, 0x39f4
/* 804B5B7C  83 84 25 54 */	lwz r28, 0x2554(r4)
/* 804B5B80  38 80 00 00 */	li r4, 0
/* 804B5B84  7C 09 03 A6 */	mtctr r0
lbl_804B5B88:
/* 804B5B88  80 05 00 00 */	lwz r0, 0(r5)
/* 804B5B8C  38 A5 00 04 */	addi r5, r5, 4
/* 804B5B90  1C 60 48 54 */	mulli r3, r0, 0x4854
/* 804B5B94  38 03 48 50 */	addi r0, r3, 0x4850
/* 804B5B98  7C 98 03 2E */	sthx r4, r24, r0
/* 804B5B9C  42 00 FF EC */	bdnz lbl_804B5B88
/* 804B5BA0  57 3E 07 BF */	clrlwi. r30, r25, 0x1e
/* 804B5BA4  41 82 00 10 */	beq lbl_804B5BB4
/* 804B5BA8  3C 78 00 01 */	addis r3, r24, 1
/* 804B5BAC  38 63 37 D4 */	addi r3, r3, 0x37d4
/* 804B5BB0  4B FF B5 F9 */	bl bIT_actor_shin_effect_check
lbl_804B5BB4:
/* 804B5BB4  38 60 00 00 */	li r3, 0
/* 804B5BB8  38 00 00 04 */	li r0, 4
/* 804B5BBC  7C 65 1B 78 */	mr r5, r3
/* 804B5BC0  38 E1 00 28 */	addi r7, r1, 0x28
/* 804B5BC4  38 C1 00 18 */	addi r6, r1, 0x18
/* 804B5BC8  38 81 00 08 */	addi r4, r1, 8
/* 804B5BCC  39 00 FF FE */	li r8, -2
/* 804B5BD0  7C 09 03 A6 */	mtctr r0
lbl_804B5BD4:
/* 804B5BD4  7D 07 19 2E */	stwx r8, r7, r3
/* 804B5BD8  7D 06 19 2E */	stwx r8, r6, r3
/* 804B5BDC  7C A4 19 2E */	stwx r5, r4, r3
/* 804B5BE0  38 63 00 04 */	addi r3, r3, 4
/* 804B5BE4  42 00 FF F0 */	bdnz lbl_804B5BD4
/* 804B5BE8  57 20 07 BD */	rlwinm. r0, r25, 0, 0x1e, 0x1e
/* 804B5BEC  41 82 01 EC */	beq lbl_804B5DD8
/* 804B5BF0  3A C1 00 28 */	addi r22, r1, 0x28
/* 804B5BF4  3B E1 00 18 */	addi r31, r1, 0x18
/* 804B5BF8  3A 61 00 08 */	addi r19, r1, 8
/* 804B5BFC  3B A0 00 00 */	li r29, 0
/* 804B5C00  3A A0 00 00 */	li r21, 0
/* 804B5C04  3A 80 00 01 */	li r20, 1
/* 804B5C08  48 00 00 44 */	b lbl_804B5C4C
lbl_804B5C0C:
/* 804B5C0C  7F A3 EB 78 */	mr r3, r29
/* 804B5C10  4B EF 1D 75 */	bl mFI_GetOldItemTableIdx
/* 804B5C14  7C 76 A9 2E */	stwx r3, r22, r21
/* 804B5C18  7C 16 A8 2E */	lwzx r0, r22, r21
/* 804B5C1C  2C 00 00 00 */	cmpwi r0, 0
/* 804B5C20  41 80 00 24 */	blt lbl_804B5C44
/* 804B5C24  54 03 10 3A */	slwi r3, r0, 2
/* 804B5C28  3C 63 00 01 */	addis r3, r3, 1
/* 804B5C2C  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804B5C30  7C 18 18 2E */	lwzx r0, r24, r3
/* 804B5C34  7C 1F A9 2E */	stwx r0, r31, r21
/* 804B5C38  7C 1F A8 2E */	lwzx r0, r31, r21
/* 804B5C3C  54 00 10 3A */	slwi r0, r0, 2
/* 804B5C40  7E 93 01 2E */	stwx r20, r19, r0
lbl_804B5C44:
/* 804B5C44  3B BD 00 01 */	addi r29, r29, 1
/* 804B5C48  3A B5 00 04 */	addi r21, r21, 4
lbl_804B5C4C:
/* 804B5C4C  7C 1D E0 00 */	cmpw r29, r28
/* 804B5C50  41 80 FF BC */	blt lbl_804B5C0C
/* 804B5C54  39 21 00 28 */	addi r9, r1, 0x28
/* 804B5C58  39 60 00 00 */	li r11, 0
/* 804B5C5C  38 60 00 00 */	li r3, 0
/* 804B5C60  38 80 00 00 */	li r4, 0
/* 804B5C64  48 00 00 7C */	b lbl_804B5CE0
lbl_804B5C68:
/* 804B5C68  7C 09 20 2E */	lwzx r0, r9, r4
/* 804B5C6C  2C 00 00 00 */	cmpwi r0, 0
/* 804B5C70  40 80 00 64 */	bge lbl_804B5CD4
/* 804B5C74  38 00 00 04 */	li r0, 4
/* 804B5C78  39 41 00 08 */	addi r10, r1, 8
/* 804B5C7C  39 80 00 00 */	li r12, 0
/* 804B5C80  38 A0 00 00 */	li r5, 0
/* 804B5C84  7C 09 03 A6 */	mtctr r0
lbl_804B5C88:
/* 804B5C88  7C 0A 28 2E */	lwzx r0, r10, r5
/* 804B5C8C  2C 00 00 00 */	cmpwi r0, 0
/* 804B5C90  40 82 00 38 */	bne lbl_804B5CC8
/* 804B5C94  7C D8 1A 14 */	add r6, r24, r3
/* 804B5C98  38 E1 00 18 */	addi r7, r1, 0x18
/* 804B5C9C  1C 0C 48 54 */	mulli r0, r12, 0x4854
/* 804B5CA0  39 00 00 01 */	li r8, 1
/* 804B5CA4  3C C6 00 01 */	addis r6, r6, 1
/* 804B5CA8  7D 0A 29 2E */	stwx r8, r10, r5
/* 804B5CAC  88 A6 25 58 */	lbz r5, 0x2558(r6)
/* 804B5CB0  7D 18 02 14 */	add r8, r24, r0
/* 804B5CB4  98 A8 48 52 */	stb r5, 0x4852(r8)
/* 804B5CB8  88 06 25 59 */	lbz r0, 0x2559(r6)
/* 804B5CBC  7D 87 21 2E */	stwx r12, r7, r4
/* 804B5CC0  98 08 48 53 */	stb r0, 0x4853(r8)
/* 804B5CC4  48 00 00 10 */	b lbl_804B5CD4
lbl_804B5CC8:
/* 804B5CC8  39 8C 00 01 */	addi r12, r12, 1
/* 804B5CCC  38 A5 00 04 */	addi r5, r5, 4
/* 804B5CD0  42 00 FF B8 */	bdnz lbl_804B5C88
lbl_804B5CD4:
/* 804B5CD4  39 6B 00 01 */	addi r11, r11, 1
/* 804B5CD8  38 63 00 10 */	addi r3, r3, 0x10
/* 804B5CDC  38 84 00 04 */	addi r4, r4, 4
lbl_804B5CE0:
/* 804B5CE0  7C 0B E0 00 */	cmpw r11, r28
/* 804B5CE4  41 80 FF 84 */	blt lbl_804B5C68
/* 804B5CE8  38 E1 00 18 */	addi r7, r1, 0x18
/* 804B5CEC  38 C1 00 28 */	addi r6, r1, 0x28
/* 804B5CF0  39 20 00 00 */	li r9, 0
/* 804B5CF4  38 60 00 00 */	li r3, 0
/* 804B5CF8  38 A0 00 01 */	li r5, 1
/* 804B5CFC  7F 89 03 A6 */	mtctr r28
/* 804B5D00  2C 1C 00 00 */	cmpwi r28, 0
/* 804B5D04  40 81 00 3C */	ble lbl_804B5D40
lbl_804B5D08:
/* 804B5D08  7C 06 18 2E */	lwzx r0, r6, r3
/* 804B5D0C  3D 03 00 01 */	addis r8, r3, 1
/* 804B5D10  7C 87 18 2E */	lwzx r4, r7, r3
/* 804B5D14  39 08 39 F4 */	addi r8, r8, 0x39f4
/* 804B5D18  2C 00 00 00 */	cmpwi r0, 0
/* 804B5D1C  7C 98 41 2E */	stwx r4, r24, r8
/* 804B5D20  40 80 00 08 */	bge lbl_804B5D28
/* 804B5D24  39 20 00 01 */	li r9, 1
lbl_804B5D28:
/* 804B5D28  7C 18 40 2E */	lwzx r0, r24, r8
/* 804B5D2C  38 63 00 04 */	addi r3, r3, 4
/* 804B5D30  1C 80 48 54 */	mulli r4, r0, 0x4854
/* 804B5D34  38 04 48 50 */	addi r0, r4, 0x4850
/* 804B5D38  7C B8 03 2E */	sthx r5, r24, r0
/* 804B5D3C  42 00 FF CC */	bdnz lbl_804B5D08
lbl_804B5D40:
/* 804B5D40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B5D44  2C 09 00 00 */	cmpwi r9, 0
/* 804B5D48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B5D4C  3C 63 00 03 */	addis r3, r3, 3
/* 804B5D50  8B 43 85 90 */	lbz r26, -0x7a70(r3)
/* 804B5D54  40 82 00 0C */	bne lbl_804B5D60
/* 804B5D58  28 1A 00 00 */	cmplwi r26, 0
/* 804B5D5C  41 82 00 7C */	beq lbl_804B5DD8
lbl_804B5D60:
/* 804B5D60  3B E1 00 28 */	addi r31, r1, 0x28
/* 804B5D64  3E 98 00 01 */	addis r20, r24, 1
/* 804B5D68  3B A0 00 00 */	li r29, 0
/* 804B5D6C  3A C0 00 00 */	li r22, 0
/* 804B5D70  3A A0 00 00 */	li r21, 0
/* 804B5D74  3A 60 00 01 */	li r19, 1
/* 804B5D78  48 00 00 58 */	b lbl_804B5DD0
lbl_804B5D7C:
/* 804B5D7C  7C 1F A8 2E */	lwzx r0, r31, r21
/* 804B5D80  2C 00 00 00 */	cmpwi r0, 0
/* 804B5D84  41 80 00 10 */	blt lbl_804B5D94
/* 804B5D88  7E 60 E8 30 */	slw r0, r19, r29
/* 804B5D8C  7F 40 00 39 */	and. r0, r26, r0
/* 804B5D90  41 82 00 34 */	beq lbl_804B5DC4
lbl_804B5D94:
/* 804B5D94  3C 75 00 01 */	addis r3, r21, 1
/* 804B5D98  3C B6 00 01 */	addis r5, r22, 1
/* 804B5D9C  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804B5DA0  80 F4 25 98 */	lwz r7, 0x2598(r20)
/* 804B5DA4  7C 18 18 2E */	lwzx r0, r24, r3
/* 804B5DA8  38 A5 25 58 */	addi r5, r5, 0x2558
/* 804B5DAC  7E E3 BB 78 */	mr r3, r23
/* 804B5DB0  7F 66 DB 78 */	mr r6, r27
/* 804B5DB4  1C 00 48 54 */	mulli r0, r0, 0x4854
/* 804B5DB8  7C B8 2A 14 */	add r5, r24, r5
/* 804B5DBC  7C 98 02 14 */	add r4, r24, r0
/* 804B5DC0  4B FF FB 35 */	bl bg_item_common_set_draw_tbl
lbl_804B5DC4:
/* 804B5DC4  3B BD 00 01 */	addi r29, r29, 1
/* 804B5DC8  3A D6 00 10 */	addi r22, r22, 0x10
/* 804B5DCC  3A B5 00 04 */	addi r21, r21, 4
lbl_804B5DD0:
/* 804B5DD0  7C 1D E0 00 */	cmpw r29, r28
/* 804B5DD4  41 80 FF A8 */	blt lbl_804B5D7C
lbl_804B5DD8:
/* 804B5DD8  57 20 07 FF */	clrlwi. r0, r25, 0x1f
/* 804B5DDC  41 82 00 5C */	beq lbl_804B5E38
/* 804B5DE0  3E B8 00 01 */	addis r21, r24, 1
/* 804B5DE4  3A 60 00 00 */	li r19, 0
/* 804B5DE8  3B 20 00 00 */	li r25, 0
/* 804B5DEC  3B 40 00 00 */	li r26, 0
/* 804B5DF0  48 00 00 40 */	b lbl_804B5E30
lbl_804B5DF4:
/* 804B5DF4  3C 7A 00 01 */	addis r3, r26, 1
/* 804B5DF8  3C B9 00 01 */	addis r5, r25, 1
/* 804B5DFC  38 63 39 F4 */	addi r3, r3, 0x39f4
/* 804B5E00  80 F5 25 98 */	lwz r7, 0x2598(r21)
/* 804B5E04  7C 18 18 2E */	lwzx r0, r24, r3
/* 804B5E08  38 A5 25 58 */	addi r5, r5, 0x2558
/* 804B5E0C  7E E3 BB 78 */	mr r3, r23
/* 804B5E10  7F 66 DB 78 */	mr r6, r27
/* 804B5E14  1C 00 48 54 */	mulli r0, r0, 0x4854
/* 804B5E18  7C B8 2A 14 */	add r5, r24, r5
/* 804B5E1C  7C 98 02 14 */	add r4, r24, r0
/* 804B5E20  4B FF FA D5 */	bl bg_item_common_set_draw_tbl
/* 804B5E24  3A 73 00 01 */	addi r19, r19, 1
/* 804B5E28  3B 39 00 10 */	addi r25, r25, 0x10
/* 804B5E2C  3B 5A 00 04 */	addi r26, r26, 4
lbl_804B5E30:
/* 804B5E30  7C 13 E0 00 */	cmpw r19, r28
/* 804B5E34  41 80 FF C0 */	blt lbl_804B5DF4
lbl_804B5E38:
/* 804B5E38  2C 1E 00 00 */	cmpwi r30, 0
/* 804B5E3C  41 82 00 10 */	beq lbl_804B5E4C
/* 804B5E40  7F 03 C3 78 */	mr r3, r24
/* 804B5E44  7F 84 E3 78 */	mr r4, r28
/* 804B5E48  4B FF FB 4D */	bl bg_shin_effect_being_check
lbl_804B5E4C:
/* 804B5E4C  39 61 00 70 */	addi r11, r1, 0x70
/* 804B5E50  4B BE 50 A9 */	bl func_8009AEF8
/* 804B5E54  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804B5E58  7C 08 03 A6 */	mtlr r0
/* 804B5E5C  38 21 00 70 */	addi r1, r1, 0x70
/* 804B5E60  4E 80 00 20 */	blr 
