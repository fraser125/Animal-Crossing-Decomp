lbl_803F80E8:
/* 803F80E8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 803F80EC  7C 08 02 A6 */	mflr r0
/* 803F80F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 803F80F4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 803F80F8  4B CA 2D C5 */	bl func_8009AEBC
/* 803F80FC  7C 9E 23 78 */	mr r30, r4
/* 803F8100  7C 7F 1B 78 */	mr r31, r3
/* 803F8104  7C B7 2B 78 */	mr r23, r5
/* 803F8108  7C D8 33 78 */	mr r24, r6
/* 803F810C  7C F9 3B 78 */	mr r25, r7
/* 803F8110  7D 1A 43 78 */	mr r26, r8
/* 803F8114  7D 3B 4B 78 */	mr r27, r9
/* 803F8118  7D 5C 53 78 */	mr r28, r10
/* 803F811C  7F C3 F3 78 */	mr r3, r30
/* 803F8120  3B A0 00 00 */	li r29, 0
/* 803F8124  4B C9 61 45 */	bl CARDGetResultCode
/* 803F8128  90 77 00 00 */	stw r3, 0(r23)
/* 803F812C  80 17 00 00 */	lwz r0, 0(r23)
/* 803F8130  2C 00 00 00 */	cmpwi r0, 0
/* 803F8134  40 82 00 CC */	bne lbl_803F8200
/* 803F8138  7F C3 F3 78 */	mr r3, r30
/* 803F813C  7F 24 CB 78 */	mr r4, r25
/* 803F8140  7F E5 FB 78 */	mr r5, r31
/* 803F8144  4B C9 93 61 */	bl CARDOpen
/* 803F8148  90 77 00 00 */	stw r3, 0(r23)
/* 803F814C  80 17 00 00 */	lwz r0, 0(r23)
/* 803F8150  2C 00 00 00 */	cmpwi r0, 0
/* 803F8154  40 82 00 9C */	bne lbl_803F81F0
/* 803F8158  80 1F 00 04 */	lwz r0, 4(r31)
/* 803F815C  7F C3 F3 78 */	mr r3, r30
/* 803F8160  38 A1 00 08 */	addi r5, r1, 8
/* 803F8164  90 1F 00 14 */	stw r0, 0x14(r31)
/* 803F8168  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 803F816C  4B C9 A4 8D */	bl CARDGetStatus
/* 803F8170  90 77 00 00 */	stw r3, 0(r23)
/* 803F8174  80 17 00 00 */	lwz r0, 0(r23)
/* 803F8178  2C 00 00 00 */	cmpwi r0, 0
/* 803F817C  40 82 00 60 */	bne lbl_803F81DC
/* 803F8180  80 01 00 28 */	lwz r0, 0x28(r1)
/* 803F8184  7C 00 D8 40 */	cmplw r0, r27
/* 803F8188  40 82 00 54 */	bne lbl_803F81DC
/* 803F818C  7F E3 FB 78 */	mr r3, r31
/* 803F8190  7F 04 C3 78 */	mr r4, r24
/* 803F8194  7F 45 D3 78 */	mr r5, r26
/* 803F8198  7F 86 E3 78 */	mr r6, r28
/* 803F819C  38 E0 00 00 */	li r7, 0
/* 803F81A0  4B C9 9F 09 */	bl CARDWriteAsync
/* 803F81A4  90 77 00 00 */	stw r3, 0(r23)
/* 803F81A8  80 17 00 00 */	lwz r0, 0(r23)
/* 803F81AC  2C 00 00 00 */	cmpwi r0, 0
/* 803F81B0  40 82 00 18 */	bne lbl_803F81C8
/* 803F81B4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 803F81B8  3B A0 00 01 */	li r29, 1
/* 803F81BC  38 03 00 01 */	addi r0, r3, 1
/* 803F81C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 803F81C4  48 00 00 48 */	b lbl_803F820C
lbl_803F81C8:
/* 803F81C8  7F E3 FB 78 */	mr r3, r31
/* 803F81CC  7F C4 F3 78 */	mr r4, r30
/* 803F81D0  4B FF FC 45 */	bl mCD_close_and_unmount
/* 803F81D4  3B A0 FF FF */	li r29, -1
/* 803F81D8  48 00 00 34 */	b lbl_803F820C
lbl_803F81DC:
/* 803F81DC  7F E3 FB 78 */	mr r3, r31
/* 803F81E0  7F C4 F3 78 */	mr r4, r30
/* 803F81E4  4B FF FC 31 */	bl mCD_close_and_unmount
/* 803F81E8  3B A0 FF FF */	li r29, -1
/* 803F81EC  48 00 00 20 */	b lbl_803F820C
lbl_803F81F0:
/* 803F81F0  7F C3 F3 78 */	mr r3, r30
/* 803F81F4  4B C9 85 ED */	bl CARDUnmount
/* 803F81F8  3B A0 FF FF */	li r29, -1
/* 803F81FC  48 00 00 10 */	b lbl_803F820C
lbl_803F8200:
/* 803F8200  2C 00 FF FF */	cmpwi r0, -1
/* 803F8204  41 82 00 08 */	beq lbl_803F820C
/* 803F8208  3B A0 FF FF */	li r29, -1
lbl_803F820C:
/* 803F820C  7F A3 EB 78 */	mr r3, r29
/* 803F8210  39 61 00 A0 */	addi r11, r1, 0xa0
/* 803F8214  4B CA 2C F5 */	bl func_8009AF08
/* 803F8218  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 803F821C  7C 08 03 A6 */	mtlr r0
/* 803F8220  38 21 00 A0 */	addi r1, r1, 0xa0
/* 803F8224  4E 80 00 20 */	blr 
