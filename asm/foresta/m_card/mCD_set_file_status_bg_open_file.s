lbl_803F9088:
/* 803F9088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F908C  7C 08 02 A6 */	mflr r0
/* 803F9090  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9094  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9098  4B CA 1E 31 */	bl func_8009AEC8
/* 803F909C  7C 9F 23 78 */	mr r31, r4
/* 803F90A0  83 A1 00 30 */	lwz r29, 0x30(r1)
/* 803F90A4  7C 7A 1B 78 */	mr r26, r3
/* 803F90A8  7C BB 2B 78 */	mr r27, r5
/* 803F90AC  7C FC 3B 78 */	mr r28, r7
/* 803F90B0  7F E3 FB 78 */	mr r3, r31
/* 803F90B4  3B C0 00 00 */	li r30, 0
/* 803F90B8  4B C9 51 B1 */	bl CARDGetResultCode
/* 803F90BC  90 7B 00 00 */	stw r3, 0(r27)
/* 803F90C0  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F90C4  2C 00 00 00 */	cmpwi r0, 0
/* 803F90C8  40 82 00 88 */	bne lbl_803F9150
/* 803F90CC  7F E3 FB 78 */	mr r3, r31
/* 803F90D0  7F 84 E3 78 */	mr r4, r28
/* 803F90D4  7F 45 D3 78 */	mr r5, r26
/* 803F90D8  4B C9 83 CD */	bl CARDOpen
/* 803F90DC  90 7B 00 00 */	stw r3, 0(r27)
/* 803F90E0  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F90E4  2C 00 00 00 */	cmpwi r0, 0
/* 803F90E8  40 82 00 58 */	bne lbl_803F9140
/* 803F90EC  80 1A 00 04 */	lwz r0, 4(r26)
/* 803F90F0  7F E3 FB 78 */	mr r3, r31
/* 803F90F4  7F A5 EB 78 */	mr r5, r29
/* 803F90F8  38 C0 00 00 */	li r6, 0
/* 803F90FC  90 1A 00 14 */	stw r0, 0x14(r26)
/* 803F9100  80 9A 00 14 */	lwz r4, 0x14(r26)
/* 803F9104  4B C9 96 21 */	bl CARDSetStatusAsync
/* 803F9108  90 7B 00 00 */	stw r3, 0(r27)
/* 803F910C  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F9110  2C 00 00 00 */	cmpwi r0, 0
/* 803F9114  40 82 00 18 */	bne lbl_803F912C
/* 803F9118  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803F911C  3B C0 00 01 */	li r30, 1
/* 803F9120  38 03 00 01 */	addi r0, r3, 1
/* 803F9124  90 1A 00 18 */	stw r0, 0x18(r26)
/* 803F9128  48 00 00 34 */	b lbl_803F915C
lbl_803F912C:
/* 803F912C  7F 43 D3 78 */	mr r3, r26
/* 803F9130  7F E4 FB 78 */	mr r4, r31
/* 803F9134  4B FF EC E1 */	bl mCD_close_and_unmount
/* 803F9138  3B C0 FF FF */	li r30, -1
/* 803F913C  48 00 00 20 */	b lbl_803F915C
lbl_803F9140:
/* 803F9140  7F E3 FB 78 */	mr r3, r31
/* 803F9144  4B C9 76 9D */	bl CARDUnmount
/* 803F9148  3B C0 FF FF */	li r30, -1
/* 803F914C  48 00 00 10 */	b lbl_803F915C
lbl_803F9150:
/* 803F9150  2C 00 FF FF */	cmpwi r0, -1
/* 803F9154  41 82 00 08 */	beq lbl_803F915C
/* 803F9158  3B C0 FF FF */	li r30, -1
lbl_803F915C:
/* 803F915C  7F C3 F3 78 */	mr r3, r30
/* 803F9160  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9164  4B CA 1D B1 */	bl func_8009AF14
/* 803F9168  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F916C  7C 08 03 A6 */	mtlr r0
/* 803F9170  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9174  4E 80 00 20 */	blr 
