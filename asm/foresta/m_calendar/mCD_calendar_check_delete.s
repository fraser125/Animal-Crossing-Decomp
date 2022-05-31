lbl_8037D4F0:
/* 8037D4F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037D4F4  7C 08 02 A6 */	mflr r0
/* 8037D4F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037D4FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8037D500  4B D1 D9 D1 */	bl func_8009AED0
/* 8037D504  2C 03 FF FF */	cmpwi r3, -1
/* 8037D508  7C 9C 23 78 */	mr r28, r4
/* 8037D50C  7C BD 2B 78 */	mr r29, r5
/* 8037D510  7C DE 33 78 */	mr r30, r6
/* 8037D514  40 82 00 14 */	bne lbl_8037D528
/* 8037D518  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8037D51C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8037D520  3C 63 00 02 */	addis r3, r3, 2
/* 8037D524  88 63 60 03 */	lbz r3, 0x6003(r3)
lbl_8037D528:
/* 8037D528  2C 03 00 04 */	cmpwi r3, 4
/* 8037D52C  41 82 00 84 */	beq lbl_8037D5B0
/* 8037D530  1C 83 24 40 */	mulli r4, r3, 0x2440
/* 8037D534  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8037D538  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8037D53C  7C 60 22 14 */	add r3, r0, r4
/* 8037D540  3B E3 23 6C */	addi r31, r3, 0x236c
/* 8037D544  A0 63 23 D0 */	lhz r3, 0x23d0(r3)
/* 8037D548  28 03 00 00 */	cmplwi r3, 0
/* 8037D54C  40 82 00 10 */	bne lbl_8037D55C
/* 8037D550  38 60 FF FF */	li r3, -1
/* 8037D554  4B FF FE F9 */	bl mCD_calendar_clear
/* 8037D558  48 00 00 58 */	b lbl_8037D5B0
lbl_8037D55C:
/* 8037D55C  88 9F 00 66 */	lbz r4, 0x66(r31)
/* 8037D560  7F 85 E3 78 */	mr r5, r28
/* 8037D564  7F A6 EB 78 */	mr r6, r29
/* 8037D568  4B FF FE C1 */	bl mCD_GetIntervalMonths
/* 8037D56C  7C 64 1B 78 */	mr r4, r3
/* 8037D570  2C 04 00 0C */	cmpwi r4, 0xc
/* 8037D574  40 80 00 0C */	bge lbl_8037D580
/* 8037D578  2C 04 FF F4 */	cmpwi r4, -12
/* 8037D57C  41 81 00 10 */	bgt lbl_8037D58C
lbl_8037D580:
/* 8037D580  38 60 FF FF */	li r3, -1
/* 8037D584  4B FF FE C9 */	bl mCD_calendar_clear
/* 8037D588  48 00 00 28 */	b lbl_8037D5B0
lbl_8037D58C:
/* 8037D58C  2C 04 00 00 */	cmpwi r4, 0
/* 8037D590  41 82 00 0C */	beq lbl_8037D59C
/* 8037D594  7F E3 FB 78 */	mr r3, r31
/* 8037D598  4B FF FB 11 */	bl func_8037D0A8
lbl_8037D59C:
/* 8037D59C  7F E3 FB 78 */	mr r3, r31
/* 8037D5A0  7F 84 E3 78 */	mr r4, r28
/* 8037D5A4  7F A5 EB 78 */	mr r5, r29
/* 8037D5A8  7F C6 F3 78 */	mr r6, r30
/* 8037D5AC  4B FF FC 6D */	bl mCD_calendar_clear_day
lbl_8037D5B0:
/* 8037D5B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8037D5B4  4B D1 D9 69 */	bl func_8009AF1C
/* 8037D5B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037D5BC  7C 08 03 A6 */	mtlr r0
/* 8037D5C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8037D5C4  4E 80 00 20 */	blr 
