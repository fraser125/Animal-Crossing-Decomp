lbl_803FB868:
/* 803FB868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FB86C  7C 08 02 A6 */	mflr r0
/* 803FB870  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FB874  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB878  4B C9 F6 51 */	bl func_8009AEC8
/* 803FB87C  7C 7A 1B 78 */	mr r26, r3
/* 803FB880  38 00 00 02 */	li r0, 2
/* 803FB884  83 83 00 0C */	lwz r28, 0xc(r3)
/* 803FB888  3B BA 00 54 */	addi r29, r26, 0x54
/* 803FB88C  3B 60 FF FF */	li r27, -1
/* 803FB890  38 60 00 00 */	li r3, 0
/* 803FB894  38 A0 FF FD */	li r5, -3
/* 803FB898  38 80 00 16 */	li r4, 0x16
/* 803FB89C  7C 09 03 A6 */	mtctr r0
lbl_803FB8A0:
/* 803FB8A0  7C DD 1A 14 */	add r6, r29, r3
/* 803FB8A4  38 63 00 94 */	addi r3, r3, 0x94
/* 803FB8A8  90 A6 00 74 */	stw r5, 0x74(r6)
/* 803FB8AC  90 86 00 78 */	stw r4, 0x78(r6)
/* 803FB8B0  42 00 FF F0 */	bdnz lbl_803FB8A0
/* 803FB8B4  28 1C 00 00 */	cmplwi r28, 0
/* 803FB8B8  41 82 00 88 */	beq lbl_803FB940
/* 803FB8BC  3B C0 00 00 */	li r30, 0
lbl_803FB8C0:
/* 803FB8C0  7F C5 F3 78 */	mr r5, r30
/* 803FB8C4  7F 86 E3 78 */	mr r6, r28
/* 803FB8C8  38 7D 00 74 */	addi r3, r29, 0x74
/* 803FB8CC  38 9D 00 78 */	addi r4, r29, 0x78
/* 803FB8D0  4B FF F9 B1 */	bl mCD_CheckThisLandSlot
/* 803FB8D4  7C 7F 1B 78 */	mr r31, r3
/* 803FB8D8  2C 1F 00 01 */	cmpwi r31, 1
/* 803FB8DC  40 82 00 10 */	bne lbl_803FB8EC
/* 803FB8E0  93 DA 00 00 */	stw r30, 0(r26)
/* 803FB8E4  3B 60 00 01 */	li r27, 1
/* 803FB8E8  48 00 00 58 */	b lbl_803FB940
lbl_803FB8EC:
/* 803FB8EC  7F C4 F3 78 */	mr r4, r30
/* 803FB8F0  38 60 20 00 */	li r3, 0x2000
/* 803FB8F4  4B FF C0 39 */	bl mCD_check_sector_size
/* 803FB8F8  2C 03 00 00 */	cmpwi r3, 0
/* 803FB8FC  40 82 00 14 */	bne lbl_803FB910
/* 803FB900  38 00 00 06 */	li r0, 6
/* 803FB904  90 1D 00 78 */	stw r0, 0x78(r29)
/* 803FB908  93 DA 00 00 */	stw r30, 0(r26)
/* 803FB90C  48 00 00 24 */	b lbl_803FB930
lbl_803FB910:
/* 803FB910  80 1D 00 78 */	lwz r0, 0x78(r29)
/* 803FB914  2C 00 00 16 */	cmpwi r0, 0x16
/* 803FB918  41 82 00 0C */	beq lbl_803FB924
/* 803FB91C  2C 1F FF FF */	cmpwi r31, -1
/* 803FB920  40 82 00 10 */	bne lbl_803FB930
lbl_803FB924:
/* 803FB924  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 803FB928  4B FF EA 31 */	bl mCD_TransErrorCode_nes
/* 803FB92C  90 7D 00 78 */	stw r3, 0x78(r29)
lbl_803FB930:
/* 803FB930  3B DE 00 01 */	addi r30, r30, 1
/* 803FB934  3B BD 00 94 */	addi r29, r29, 0x94
/* 803FB938  2C 1E 00 02 */	cmpwi r30, 2
/* 803FB93C  41 80 FF 84 */	blt lbl_803FB8C0
lbl_803FB940:
/* 803FB940  2C 1B FF FF */	cmpwi r27, -1
/* 803FB944  40 82 00 14 */	bne lbl_803FB958
/* 803FB948  80 9A 00 CC */	lwz r4, 0xcc(r26)
/* 803FB94C  7F 43 D3 78 */	mr r3, r26
/* 803FB950  80 BA 01 60 */	lwz r5, 0x160(r26)
/* 803FB954  4B FF F1 79 */	bl mCD_GetHighPriority_common
lbl_803FB958:
/* 803FB958  7F 63 DB 78 */	mr r3, r27
/* 803FB95C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB960  4B C9 F5 B5 */	bl func_8009AF14
/* 803FB964  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB968  7C 08 03 A6 */	mtlr r0
/* 803FB96C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB970  4E 80 00 20 */	blr 
