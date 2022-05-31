lbl_805C71B0:
/* 805C71B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C71B4  7C 08 02 A6 */	mflr r0
/* 805C71B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C71BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805C71C0  4B AD 3D 11 */	bl func_8009AED0
/* 805C71C4  7C 7C 1B 78 */	mr r28, r3
/* 805C71C8  7C 9D 23 78 */	mr r29, r4
/* 805C71CC  7C BE 2B 78 */	mr r30, r5
/* 805C71D0  7F A3 EB 78 */	mr r3, r29
/* 805C71D4  7F 84 E3 78 */	mr r4, r28
/* 805C71D8  4B FF FD 41 */	bl mCD_make_calendar_data_month
/* 805C71DC  7F A3 EB 78 */	mr r3, r29
/* 805C71E0  4B FF FD AD */	bl mCD_make_calendar_data_fixed_day_event
/* 805C71E4  7F A3 EB 78 */	mr r3, r29
/* 805C71E8  7F 84 E3 78 */	mr r4, r28
/* 805C71EC  4B FF FE 11 */	bl mCD_make_calendar_data_unfixed_day_event
/* 805C71F0  1C 9E 24 40 */	mulli r4, r30, 0x2440
/* 805C71F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C71F8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805C71FC  7C 60 22 14 */	add r3, r0, r4
/* 805C7200  38 63 10 C4 */	addi r3, r3, 0x10c4
/* 805C7204  88 83 00 02 */	lbz r4, 2(r3)
/* 805C7208  28 04 00 FF */	cmplwi r4, 0xff
/* 805C720C  41 82 00 1C */	beq lbl_805C7228
/* 805C7210  88 A3 00 03 */	lbz r5, 3(r3)
/* 805C7214  7F A3 EB 78 */	mr r3, r29
/* 805C7218  38 C0 00 1C */	li r6, 0x1c
/* 805C721C  38 E0 00 05 */	li r7, 5
/* 805C7220  39 00 00 00 */	li r8, 0
/* 805C7224  4B FF FB 39 */	bl mDC_set_event_day_data
lbl_805C7228:
/* 805C7228  3B E0 00 01 */	li r31, 1
lbl_805C722C:
/* 805C722C  38 1F FF FF */	addi r0, r31, -1
/* 805C7230  7F 83 E3 78 */	mr r3, r28
/* 805C7234  1C 00 00 73 */	mulli r0, r0, 0x73
/* 805C7238  7F C6 F3 78 */	mr r6, r30
/* 805C723C  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 805C7240  7C BD 02 14 */	add r5, r29, r0
/* 805C7244  4B FF FA 51 */	bl mCD_make_calendar_event_sanka_check
/* 805C7248  3B FF 00 01 */	addi r31, r31, 1
/* 805C724C  2C 1F 00 0C */	cmpwi r31, 0xc
/* 805C7250  40 81 FF DC */	ble lbl_805C722C
/* 805C7254  39 61 00 20 */	addi r11, r1, 0x20
/* 805C7258  4B AD 3C C5 */	bl func_8009AF1C
/* 805C725C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C7260  7C 08 03 A6 */	mtlr r0
/* 805C7264  38 21 00 20 */	addi r1, r1, 0x20
/* 805C7268  4E 80 00 20 */	blr 
