lbl_803F9330:
/* 803F9330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9334  7C 08 02 A6 */	mflr r0
/* 803F9338  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F933C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9340  4B CA 1B 89 */	bl func_8009AEC8
/* 803F9344  7C 9F 23 78 */	mr r31, r4
/* 803F9348  83 A1 00 30 */	lwz r29, 0x30(r1)
/* 803F934C  7C 7A 1B 78 */	mr r26, r3
/* 803F9350  7C BB 2B 78 */	mr r27, r5
/* 803F9354  7C FC 3B 78 */	mr r28, r7
/* 803F9358  7F E3 FB 78 */	mr r3, r31
/* 803F935C  3B C0 00 00 */	li r30, 0
/* 803F9360  4B C9 4F 09 */	bl CARDGetResultCode
/* 803F9364  90 7B 00 00 */	stw r3, 0(r27)
/* 803F9368  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F936C  2C 00 00 00 */	cmpwi r0, 0
/* 803F9370  40 82 00 84 */	bne lbl_803F93F4
/* 803F9374  7F E3 FB 78 */	mr r3, r31
/* 803F9378  7F 84 E3 78 */	mr r4, r28
/* 803F937C  7F 45 D3 78 */	mr r5, r26
/* 803F9380  4B C9 81 25 */	bl CARDOpen
/* 803F9384  90 7B 00 00 */	stw r3, 0(r27)
/* 803F9388  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F938C  2C 00 00 00 */	cmpwi r0, 0
/* 803F9390  40 82 00 54 */	bne lbl_803F93E4
/* 803F9394  80 1A 00 04 */	lwz r0, 4(r26)
/* 803F9398  7F E3 FB 78 */	mr r3, r31
/* 803F939C  7F A5 EB 78 */	mr r5, r29
/* 803F93A0  90 1A 00 14 */	stw r0, 0x14(r26)
/* 803F93A4  80 9A 00 14 */	lwz r4, 0x14(r26)
/* 803F93A8  4B C9 92 51 */	bl CARDGetStatus
/* 803F93AC  90 7B 00 00 */	stw r3, 0(r27)
/* 803F93B0  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F93B4  2C 00 00 00 */	cmpwi r0, 0
/* 803F93B8  40 82 00 18 */	bne lbl_803F93D0
/* 803F93BC  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803F93C0  3B C0 00 01 */	li r30, 1
/* 803F93C4  38 03 00 01 */	addi r0, r3, 1
/* 803F93C8  90 1A 00 18 */	stw r0, 0x18(r26)
/* 803F93CC  48 00 00 08 */	b lbl_803F93D4
lbl_803F93D0:
/* 803F93D0  3B C0 FF FF */	li r30, -1
lbl_803F93D4:
/* 803F93D4  7F 43 D3 78 */	mr r3, r26
/* 803F93D8  7F E4 FB 78 */	mr r4, r31
/* 803F93DC  4B FF EA 39 */	bl mCD_close_and_unmount
/* 803F93E0  48 00 00 20 */	b lbl_803F9400
lbl_803F93E4:
/* 803F93E4  7F E3 FB 78 */	mr r3, r31
/* 803F93E8  4B C9 73 F9 */	bl CARDUnmount
/* 803F93EC  3B C0 FF FF */	li r30, -1
/* 803F93F0  48 00 00 10 */	b lbl_803F9400
lbl_803F93F4:
/* 803F93F4  2C 00 FF FF */	cmpwi r0, -1
/* 803F93F8  41 82 00 08 */	beq lbl_803F9400
/* 803F93FC  3B C0 FF FF */	li r30, -1
lbl_803F9400:
/* 803F9400  7F C3 F3 78 */	mr r3, r30
/* 803F9404  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9408  4B CA 1B 0D */	bl func_8009AF14
/* 803F940C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9410  7C 08 03 A6 */	mtlr r0
/* 803F9414  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9418  4E 80 00 20 */	blr 
