lbl_80519478:
/* 80519478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051947C  7C 08 02 A6 */	mflr r0
/* 80519480  90 01 00 24 */	stw r0, 0x24(r1)
/* 80519484  39 61 00 20 */	addi r11, r1, 0x20
/* 80519488  4B B8 1A 49 */	bl func_8009AED0
/* 8051948C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80519490  3B C0 00 00 */	li r30, 0
/* 80519494  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80519498  3C 83 00 02 */	addis r4, r3, 2
/* 8051949C  80 04 04 CC */	lwz r0, 0x4cc(r4)
/* 805194A0  38 84 04 A4 */	addi r4, r4, 0x4a4
/* 805194A4  2C 00 00 02 */	cmpwi r0, 2
/* 805194A8  40 81 00 0C */	ble lbl_805194B4
/* 805194AC  3B C0 00 01 */	li r30, 1
/* 805194B0  48 00 00 40 */	b lbl_805194F0
lbl_805194B4:
/* 805194B4  7C 9D 23 78 */	mr r29, r4
/* 805194B8  7C 1C 03 78 */	mr r28, r0
/* 805194BC  3F E3 00 02 */	addis r31, r3, 2
/* 805194C0  48 00 00 28 */	b lbl_805194E8
lbl_805194C4:
/* 805194C4  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 805194C8  7F A3 EB 78 */	mr r3, r29
/* 805194CC  4B EC 6C 79 */	bl mPr_CheckCmpPersonalID
/* 805194D0  2C 03 00 01 */	cmpwi r3, 1
/* 805194D4  40 82 00 0C */	bne lbl_805194E0
/* 805194D8  38 60 00 01 */	li r3, 1
/* 805194DC  48 00 00 18 */	b lbl_805194F4
lbl_805194E0:
/* 805194E0  3B BD 00 14 */	addi r29, r29, 0x14
/* 805194E4  3B 9C FF FF */	addi r28, r28, -1
lbl_805194E8:
/* 805194E8  2C 1C 00 00 */	cmpwi r28, 0
/* 805194EC  40 82 FF D8 */	bne lbl_805194C4
lbl_805194F0:
/* 805194F0  7F C3 F3 78 */	mr r3, r30
lbl_805194F4:
/* 805194F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805194F8  4B B8 1A 25 */	bl func_8009AF1C
/* 805194FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80519500  7C 08 03 A6 */	mtlr r0
/* 80519504  38 21 00 20 */	addi r1, r1, 0x20
/* 80519508  4E 80 00 20 */	blr 
