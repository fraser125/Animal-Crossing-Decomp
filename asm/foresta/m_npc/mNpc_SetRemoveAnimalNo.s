lbl_803D0964:
/* 803D0964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D0968  7C 08 02 A6 */	mflr r0
/* 803D096C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D0970  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0974  4B CC A5 5D */	bl func_8009AED0
/* 803D0978  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803D097C  7C 7C 1B 78 */	mr r28, r3
/* 803D0980  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 803D0984  7C 9D 23 78 */	mr r29, r4
/* 803D0988  8B E3 00 18 */	lbz r31, 0x18(r3)
/* 803D098C  7C BE 2B 78 */	mr r30, r5
/* 803D0990  28 1F 00 05 */	cmplwi r31, 5
/* 803D0994  40 81 00 5C */	ble lbl_803D09F0
/* 803D0998  88 1C 00 00 */	lbz r0, 0(r28)
/* 803D099C  28 00 00 FF */	cmplwi r0, 0xff
/* 803D09A0  40 82 00 50 */	bne lbl_803D09F0
/* 803D09A4  7F A3 EB 78 */	mr r3, r29
/* 803D09A8  7F C4 F3 78 */	mr r4, r30
/* 803D09AC  38 A0 00 01 */	li r5, 1
/* 803D09B0  4B FF FD 25 */	bl mNpc_DecideRemoveAnimalNo_Friend
/* 803D09B4  2C 03 FF FF */	cmpwi r3, -1
/* 803D09B8  40 82 00 2C */	bne lbl_803D09E4
/* 803D09BC  7F A3 EB 78 */	mr r3, r29
/* 803D09C0  7F C4 F3 78 */	mr r4, r30
/* 803D09C4  38 A0 00 00 */	li r5, 0
/* 803D09C8  4B FF FD 0D */	bl mNpc_DecideRemoveAnimalNo_Friend
/* 803D09CC  2C 03 FF FF */	cmpwi r3, -1
/* 803D09D0  40 82 00 14 */	bne lbl_803D09E4
/* 803D09D4  7F A3 EB 78 */	mr r3, r29
/* 803D09D8  7F C4 F3 78 */	mr r4, r30
/* 803D09DC  7F E5 FB 78 */	mr r5, r31
/* 803D09E0  4B FF FE B1 */	bl mNpc_DecideRemoveAnimalNo
lbl_803D09E4:
/* 803D09E4  2C 03 FF FF */	cmpwi r3, -1
/* 803D09E8  41 82 00 08 */	beq lbl_803D09F0
/* 803D09EC  98 7C 00 00 */	stb r3, 0(r28)
lbl_803D09F0:
/* 803D09F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D09F4  4B CC A5 29 */	bl func_8009AF1C
/* 803D09F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D09FC  7C 08 03 A6 */	mtlr r0
/* 803D0A00  38 21 00 20 */	addi r1, r1, 0x20
/* 803D0A04  4E 80 00 20 */	blr 
