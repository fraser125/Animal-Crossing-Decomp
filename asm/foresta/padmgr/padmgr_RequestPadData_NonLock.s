lbl_80408488:
/* 80408488  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040848C  7C 08 02 A6 */	mflr r0
/* 80408490  90 01 00 24 */	stw r0, 0x24(r1)
/* 80408494  39 61 00 20 */	addi r11, r1, 0x20
/* 80408498  4B C9 2A 35 */	bl func_8009AECC
/* 8040849C  3C A0 80 66 */	lis r5, data_8065F038@ha /* 0x8065F038@ha */
/* 804084A0  7C 9B 23 78 */	mr r27, r4
/* 804084A4  3B E5 F0 38 */	addi r31, r5, data_8065F038@l /* 0x8065F038@l */
/* 804084A8  7C 7C 1B 78 */	mr r28, r3
/* 804084AC  80 9F 00 00 */	lwz r4, 0(r31)
/* 804084B0  3B C0 00 00 */	li r30, 0
/* 804084B4  3B A4 03 C8 */	addi r29, r4, 0x3c8
/* 804084B8  48 00 00 D4 */	b lbl_8040858C
lbl_804084BC:
/* 804084BC  2C 1B 00 00 */	cmpwi r27, 0
/* 804084C0  41 82 00 40 */	beq lbl_80408500
/* 804084C4  38 00 00 03 */	li r0, 3
/* 804084C8  38 BC FF FC */	addi r5, r28, -4
/* 804084CC  38 9D FF FC */	addi r4, r29, -4
/* 804084D0  7C 09 03 A6 */	mtctr r0
lbl_804084D4:
/* 804084D4  80 64 00 04 */	lwz r3, 4(r4)
/* 804084D8  84 04 00 08 */	lwzu r0, 8(r4)
/* 804084DC  90 65 00 04 */	stw r3, 4(r5)
/* 804084E0  94 05 00 08 */	stwu r0, 8(r5)
/* 804084E4  42 00 FF F0 */	bdnz lbl_804084D4
/* 804084E8  38 00 00 00 */	li r0, 0
/* 804084EC  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 804084F0  98 1D 00 0E */	stb r0, 0xe(r29)
/* 804084F4  98 1D 00 0F */	stb r0, 0xf(r29)
/* 804084F8  B0 1D 00 12 */	sth r0, 0x12(r29)
/* 804084FC  48 00 00 84 */	b lbl_80408580
lbl_80408500:
/* 80408500  80 1C 00 00 */	lwz r0, 0(r28)
/* 80408504  7F 83 E3 78 */	mr r3, r28
/* 80408508  90 1C 00 06 */	stw r0, 6(r28)
/* 8040850C  A0 1C 00 04 */	lhz r0, 4(r28)
/* 80408510  B0 1C 00 0A */	sth r0, 0xa(r28)
/* 80408514  80 1D 00 00 */	lwz r0, 0(r29)
/* 80408518  90 1C 00 00 */	stw r0, 0(r28)
/* 8040851C  A0 1D 00 04 */	lhz r0, 4(r29)
/* 80408520  B0 1C 00 04 */	sth r0, 4(r28)
/* 80408524  A0 1C 00 06 */	lhz r0, 6(r28)
/* 80408528  A0 9C 00 00 */	lhz r4, 0(r28)
/* 8040852C  7C 05 22 78 */	xor r5, r0, r4
/* 80408530  7C A0 20 38 */	and r0, r5, r4
/* 80408534  B0 1C 00 0C */	sth r0, 0xc(r28)
/* 80408538  A0 1C 00 06 */	lhz r0, 6(r28)
/* 8040853C  7C A0 00 38 */	and r0, r5, r0
/* 80408540  B0 1C 00 12 */	sth r0, 0x12(r28)
/* 80408544  4B C5 34 89 */	bl pad_correct_stick
/* 80408548  88 7C 00 08 */	lbz r3, 8(r28)
/* 8040854C  88 1C 00 02 */	lbz r0, 2(r28)
/* 80408550  88 9C 00 0E */	lbz r4, 0xe(r28)
/* 80408554  7C 03 00 50 */	subf r0, r3, r0
/* 80408558  7C 00 07 74 */	extsb r0, r0
/* 8040855C  7C 04 02 14 */	add r0, r4, r0
/* 80408560  98 1C 00 0E */	stb r0, 0xe(r28)
/* 80408564  88 7C 00 09 */	lbz r3, 9(r28)
/* 80408568  88 1C 00 03 */	lbz r0, 3(r28)
/* 8040856C  88 9C 00 0F */	lbz r4, 0xf(r28)
/* 80408570  7C 03 00 50 */	subf r0, r3, r0
/* 80408574  7C 00 07 74 */	extsb r0, r0
/* 80408578  7C 04 02 14 */	add r0, r4, r0
/* 8040857C  98 1C 00 0F */	stb r0, 0xf(r28)
lbl_80408580:
/* 80408580  3B BD 00 18 */	addi r29, r29, 0x18
/* 80408584  3B 9C 00 18 */	addi r28, r28, 0x18
/* 80408588  3B DE 00 01 */	addi r30, r30, 1
lbl_8040858C:
/* 8040858C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80408590  88 03 04 40 */	lbz r0, 0x440(r3)
/* 80408594  7C 1E 00 00 */	cmpw r30, r0
/* 80408598  41 80 FF 24 */	blt lbl_804084BC
/* 8040859C  39 61 00 20 */	addi r11, r1, 0x20
/* 804085A0  4B C9 29 79 */	bl func_8009AF18
/* 804085A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804085A8  7C 08 03 A6 */	mtlr r0
/* 804085AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804085B0  4E 80 00 20 */	blr 
