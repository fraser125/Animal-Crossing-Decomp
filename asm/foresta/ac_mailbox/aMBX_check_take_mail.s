lbl_8042D488:
/* 8042D488  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D48C  7C 08 02 A6 */	mflr r0
/* 8042D490  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D494  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D498  4B C6 DA 39 */	bl func_8009AED0
/* 8042D49C  7C 9D 23 78 */	mr r29, r4
/* 8042D4A0  7C 7C 1B 78 */	mr r28, r3
/* 8042D4A4  7F A3 EB 78 */	mr r3, r29
/* 8042D4A8  4B FA C1 99 */	bl get_player_actor_withoutCheck
/* 8042D4AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8042D4B0  41 82 01 04 */	beq lbl_8042D5B4
/* 8042D4B4  83 DC 03 18 */	lwz r30, 0x318(r28)
/* 8042D4B8  7F C3 F3 78 */	mr r3, r30
/* 8042D4BC  4B F8 61 1D */	bl mHS_get_pl_no
/* 8042D4C0  A8 9C 00 DE */	lha r4, 0xde(r28)
/* 8042D4C4  A8 1C 00 B6 */	lha r0, 0xb6(r28)
/* 8042D4C8  38 84 E0 00 */	addi r4, r4, -8192
/* 8042D4CC  7C 04 00 50 */	subf r0, r4, r0
/* 8042D4D0  7C 00 07 34 */	extsh r0, r0
/* 8042D4D4  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8042D4D8  7C 80 02 78 */	xor r0, r4, r0
/* 8042D4DC  7C 04 00 50 */	subf r0, r4, r0
/* 8042D4E0  2C 00 1B 31 */	cmpwi r0, 0x1b31
/* 8042D4E4  40 80 00 D0 */	bge lbl_8042D5B4
/* 8042D4E8  80 1F 13 8C */	lwz r0, 0x138c(r31)
/* 8042D4EC  2C 00 00 01 */	cmpwi r0, 1
/* 8042D4F0  40 82 00 C4 */	bne lbl_8042D5B4
/* 8042D4F4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042D4F8  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8042D4FC  3C A6 00 02 */	addis r5, r6, 2
/* 8042D500  88 05 60 03 */	lbz r0, 0x6003(r5)
/* 8042D504  7C 03 00 00 */	cmpw r3, r0
/* 8042D508  40 82 00 AC */	bne lbl_8042D5B4
/* 8042D50C  3C 7E 00 01 */	addis r3, r30, 1
/* 8042D510  A0 9F 13 94 */	lhz r4, 0x1394(r31)
/* 8042D514  38 03 F0 01 */	addi r0, r3, -4095
/* 8042D518  7C 04 00 00 */	cmpw r4, r0
/* 8042D51C  40 82 00 98 */	bne lbl_8042D5B4
/* 8042D520  3C 86 00 03 */	addis r4, r6, 3
/* 8042D524  88 04 88 68 */	lbz r0, -0x7798(r4)
/* 8042D528  28 00 00 01 */	cmplwi r0, 1
/* 8042D52C  40 82 00 20 */	bne lbl_8042D54C
/* 8042D530  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 8042D534  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8042D538  28 00 00 03 */	cmplwi r0, 3
/* 8042D53C  40 80 00 10 */	bge lbl_8042D54C
/* 8042D540  38 00 00 05 */	li r0, 5
/* 8042D544  98 04 88 69 */	stb r0, -0x7797(r4)
/* 8042D548  48 00 00 6C */	b lbl_8042D5B4
lbl_8042D54C:
/* 8042D54C  1C 9E 26 B0 */	mulli r4, r30, 0x26b0
/* 8042D550  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042D554  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8042D558  7C 60 22 14 */	add r3, r0, r4
/* 8042D55C  3C 63 00 01 */	addis r3, r3, 1
/* 8042D560  38 63 9C E8 */	addi r3, r3, -25368
/* 8042D564  4B FB 2A E1 */	bl mPr_NullCheckPersonalID
/* 8042D568  2C 03 00 00 */	cmpwi r3, 0
/* 8042D56C  40 82 00 48 */	bne lbl_8042D5B4
/* 8042D570  88 1D 1F 51 */	lbz r0, 0x1f51(r29)
/* 8042D574  28 00 00 00 */	cmplwi r0, 0
/* 8042D578  40 82 00 3C */	bne lbl_8042D5B4
/* 8042D57C  88 1D 1F 52 */	lbz r0, 0x1f52(r29)
/* 8042D580  28 00 00 00 */	cmplwi r0, 0
/* 8042D584  40 82 00 30 */	bne lbl_8042D5B4
/* 8042D588  7F A3 EB 78 */	mr r3, r29
/* 8042D58C  4B FA E1 59 */	bl mPlib_able_submenu_type1
/* 8042D590  2C 03 00 00 */	cmpwi r3, 0
/* 8042D594  41 82 00 20 */	beq lbl_8042D5B4
/* 8042D598  80 1C 03 1C */	lwz r0, 0x31c(r28)
/* 8042D59C  2C 00 00 00 */	cmpwi r0, 0
/* 8042D5A0  40 82 00 14 */	bne lbl_8042D5B4
/* 8042D5A4  38 60 00 01 */	li r3, 1
/* 8042D5A8  38 00 00 02 */	li r0, 2
/* 8042D5AC  90 7F 13 90 */	stw r3, 0x1390(r31)
/* 8042D5B0  90 1C 03 1C */	stw r0, 0x31c(r28)
lbl_8042D5B4:
/* 8042D5B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D5B8  4B C6 D9 65 */	bl func_8009AF1C
/* 8042D5BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D5C0  7C 08 03 A6 */	mtlr r0
/* 8042D5C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D5C8  4E 80 00 20 */	blr 
