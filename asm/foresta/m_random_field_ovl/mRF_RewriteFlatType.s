lbl_8050AB2C:
/* 8050AB2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050AB30  7C 08 02 A6 */	mflr r0
/* 8050AB34  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050AB38  39 61 00 30 */	addi r11, r1, 0x30
/* 8050AB3C  4B B9 03 89 */	bl func_8009AEC4
/* 8050AB40  7C 79 1B 78 */	mr r25, r3
/* 8050AB44  7C 9A 23 78 */	mr r26, r4
/* 8050AB48  7C BB 2B 78 */	mr r27, r5
/* 8050AB4C  7C DC 33 78 */	mr r28, r6
/* 8050AB50  7C FD 3B 78 */	mr r29, r7
/* 8050AB54  3B C0 00 00 */	li r30, 0
/* 8050AB58  3B E0 00 00 */	li r31, 0
lbl_8050AB5C:
/* 8050AB5C  7F 23 CB 78 */	mr r3, r25
/* 8050AB60  7F E4 FB 78 */	mr r4, r31
/* 8050AB64  7F 85 E3 78 */	mr r5, r28
/* 8050AB68  7F A6 EB 78 */	mr r6, r29
/* 8050AB6C  4B FF FE 3D */	bl mRF_JudgeFlatBlock
/* 8050AB70  2C 03 00 00 */	cmpwi r3, 0
/* 8050AB74  41 82 00 1C */	beq lbl_8050AB90
/* 8050AB78  7C 1E D0 00 */	cmpw r30, r26
/* 8050AB7C  40 82 00 10 */	bne lbl_8050AB8C
/* 8050AB80  7F 79 F9 AE */	stbx r27, r25, r31
/* 8050AB84  7F E3 FB 78 */	mr r3, r31
/* 8050AB88  48 00 00 18 */	b lbl_8050ABA0
lbl_8050AB8C:
/* 8050AB8C  3B DE 00 01 */	addi r30, r30, 1
lbl_8050AB90:
/* 8050AB90  3B FF 00 01 */	addi r31, r31, 1
/* 8050AB94  2C 1F 00 38 */	cmpwi r31, 0x38
/* 8050AB98  41 80 FF C4 */	blt lbl_8050AB5C
/* 8050AB9C  38 60 FF FF */	li r3, -1
lbl_8050ABA0:
/* 8050ABA0  39 61 00 30 */	addi r11, r1, 0x30
/* 8050ABA4  4B B9 03 6D */	bl func_8009AF10
/* 8050ABA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050ABAC  7C 08 03 A6 */	mtlr r0
/* 8050ABB0  38 21 00 30 */	addi r1, r1, 0x30
/* 8050ABB4  4E 80 00 20 */	blr 
