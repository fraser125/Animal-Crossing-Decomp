lbl_803A88F4:
/* 803A88F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A88F8  7C 08 02 A6 */	mflr r0
/* 803A88FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A8900  39 61 00 30 */	addi r11, r1, 0x30
/* 803A8904  4B CF 25 C1 */	bl func_8009AEC4
/* 803A8908  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803A890C  7C 79 1B 78 */	mr r25, r3
/* 803A8910  2C 00 00 08 */	cmpwi r0, 8
/* 803A8914  7C 9A 23 78 */	mr r26, r4
/* 803A8918  7C BB 2B 78 */	mr r27, r5
/* 803A891C  7C DC 33 78 */	mr r28, r6
/* 803A8920  7C FD 3B 78 */	mr r29, r7
/* 803A8924  7D 1E 43 78 */	mr r30, r8
/* 803A8928  3B E0 00 00 */	li r31, 0
/* 803A892C  40 82 00 3C */	bne lbl_803A8968
/* 803A8930  7F 43 D3 78 */	mr r3, r26
/* 803A8934  7F 64 DB 78 */	mr r4, r27
/* 803A8938  4B FF C8 D1 */	bl mFI_BlockCheck
/* 803A893C  2C 03 00 00 */	cmpwi r3, 0
/* 803A8940  41 82 00 28 */	beq lbl_803A8968
/* 803A8944  7F 23 CB 78 */	mr r3, r25
/* 803A8948  7F 44 D3 78 */	mr r4, r26
/* 803A894C  7F 65 DB 78 */	mr r5, r27
/* 803A8950  7F 86 E3 78 */	mr r6, r28
/* 803A8954  7F A7 EB 78 */	mr r7, r29
/* 803A8958  7F C9 F3 78 */	mr r9, r30
/* 803A895C  39 00 FF FF */	li r8, -1
/* 803A8960  4B FF FE 2D */	bl mFI_RegistMoveActorList
/* 803A8964  7C 7F 1B 78 */	mr r31, r3
lbl_803A8968:
/* 803A8968  7F E3 FB 78 */	mr r3, r31
/* 803A896C  39 61 00 30 */	addi r11, r1, 0x30
/* 803A8970  4B CF 25 A1 */	bl func_8009AF10
/* 803A8974  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A8978  7C 08 03 A6 */	mtlr r0
/* 803A897C  38 21 00 30 */	addi r1, r1, 0x30
/* 803A8980  4E 80 00 20 */	blr 
