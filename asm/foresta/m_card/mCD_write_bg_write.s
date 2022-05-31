lbl_803F8228:
/* 803F8228  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F822C  7C 08 02 A6 */	mflr r0
/* 803F8230  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F8234  39 61 00 30 */	addi r11, r1, 0x30
/* 803F8238  4B CA 2C 8D */	bl func_8009AEC4
/* 803F823C  7C 9A 23 78 */	mr r26, r4
/* 803F8240  7C 79 1B 78 */	mr r25, r3
/* 803F8244  7C BB 2B 78 */	mr r27, r5
/* 803F8248  7C DC 33 78 */	mr r28, r6
/* 803F824C  7D 1D 43 78 */	mr r29, r8
/* 803F8250  7D 5E 53 78 */	mr r30, r10
/* 803F8254  7F 43 D3 78 */	mr r3, r26
/* 803F8258  3B E0 00 00 */	li r31, 0
/* 803F825C  4B C9 60 0D */	bl CARDGetResultCode
/* 803F8260  90 7B 00 00 */	stw r3, 0(r27)
/* 803F8264  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F8268  2C 00 00 00 */	cmpwi r0, 0
/* 803F826C  40 82 00 48 */	bne lbl_803F82B4
/* 803F8270  7F 23 CB 78 */	mr r3, r25
/* 803F8274  7F 84 E3 78 */	mr r4, r28
/* 803F8278  7F A5 EB 78 */	mr r5, r29
/* 803F827C  7F C6 F3 78 */	mr r6, r30
/* 803F8280  38 E0 00 00 */	li r7, 0
/* 803F8284  4B C9 9E 25 */	bl CARDWriteAsync
/* 803F8288  90 7B 00 00 */	stw r3, 0(r27)
/* 803F828C  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F8290  2C 00 00 00 */	cmpwi r0, 0
/* 803F8294  40 82 00 18 */	bne lbl_803F82AC
/* 803F8298  80 79 00 18 */	lwz r3, 0x18(r25)
/* 803F829C  3B E0 00 01 */	li r31, 1
/* 803F82A0  38 03 00 01 */	addi r0, r3, 1
/* 803F82A4  90 19 00 18 */	stw r0, 0x18(r25)
/* 803F82A8  48 00 00 24 */	b lbl_803F82CC
lbl_803F82AC:
/* 803F82AC  3B E0 FF FF */	li r31, -1
/* 803F82B0  48 00 00 1C */	b lbl_803F82CC
lbl_803F82B4:
/* 803F82B4  2C 00 FF FF */	cmpwi r0, -1
/* 803F82B8  41 82 00 14 */	beq lbl_803F82CC
/* 803F82BC  7F 23 CB 78 */	mr r3, r25
/* 803F82C0  7F 44 D3 78 */	mr r4, r26
/* 803F82C4  4B FF FB 51 */	bl mCD_close_and_unmount
/* 803F82C8  3B E0 FF FF */	li r31, -1
lbl_803F82CC:
/* 803F82CC  7F E3 FB 78 */	mr r3, r31
/* 803F82D0  39 61 00 30 */	addi r11, r1, 0x30
/* 803F82D4  4B CA 2C 3D */	bl func_8009AF10
/* 803F82D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F82DC  7C 08 03 A6 */	mtlr r0
/* 803F82E0  38 21 00 30 */	addi r1, r1, 0x30
/* 803F82E4  4E 80 00 20 */	blr 
