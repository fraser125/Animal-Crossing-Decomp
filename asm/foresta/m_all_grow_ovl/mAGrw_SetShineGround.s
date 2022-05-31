lbl_80513B08:
/* 80513B08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80513B0C  7C 08 02 A6 */	mflr r0
/* 80513B10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80513B14  39 61 00 30 */	addi r11, r1, 0x30
/* 80513B18  4B B8 73 AD */	bl func_8009AEC4
/* 80513B1C  7C 99 23 78 */	mr r25, r4
/* 80513B20  7C BA 2B 78 */	mr r26, r5
/* 80513B24  7C DB 33 78 */	mr r27, r6
/* 80513B28  7C FC 3B 78 */	mr r28, r7
/* 80513B2C  7D 1D 43 78 */	mr r29, r8
/* 80513B30  7C 7F 1B 78 */	mr r31, r3
/* 80513B34  3B C0 00 00 */	li r30, 0
lbl_80513B38:
/* 80513B38  7F E3 FB 78 */	mr r3, r31
/* 80513B3C  4B FF BC 25 */	bl func_8050F760
/* 80513B40  7F E3 FB 78 */	mr r3, r31
/* 80513B44  7F 24 CB 78 */	mr r4, r25
/* 80513B48  7F 45 D3 78 */	mr r5, r26
/* 80513B4C  7F 66 DB 78 */	mr r6, r27
/* 80513B50  7F 87 E3 78 */	mr r7, r28
/* 80513B54  7F A8 EB 78 */	mr r8, r29
/* 80513B58  4B FF FE 59 */	bl mAGrw_SetShineGround_com
/* 80513B5C  3B DE 00 01 */	addi r30, r30, 1
/* 80513B60  3B FF 00 04 */	addi r31, r31, 4
/* 80513B64  2C 1E 00 05 */	cmpwi r30, 5
/* 80513B68  41 80 FF D0 */	blt lbl_80513B38
/* 80513B6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80513B70  4B B8 73 A1 */	bl func_8009AF10
/* 80513B74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80513B78  7C 08 03 A6 */	mtlr r0
/* 80513B7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80513B80  4E 80 00 20 */	blr 
