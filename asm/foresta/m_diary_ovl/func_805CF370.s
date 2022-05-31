lbl_805CF370:
/* 805CF370  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805CF374  7C 08 02 A6 */	mflr r0
/* 805CF378  90 01 00 44 */	stw r0, 0x44(r1)
/* 805CF37C  39 61 00 40 */	addi r11, r1, 0x40
/* 805CF380  4B AC BB 29 */	bl func_8009AEA8
/* 805CF384  83 23 00 08 */	lwz r25, 8(r3)
/* 805CF388  7C 9A 23 78 */	mr r26, r4
/* 805CF38C  7C BB 2B 78 */	mr r27, r5
/* 805CF390  7C DC 33 78 */	mr r28, r6
/* 805CF394  7C FD 3B 78 */	mr r29, r7
/* 805CF398  7D 12 43 78 */	mr r18, r8
/* 805CF39C  3B C0 00 00 */	li r30, 0
/* 805CF3A0  3A 60 00 00 */	li r19, 0
/* 805CF3A4  3A E0 00 00 */	li r23, 0
/* 805CF3A8  3A C0 00 00 */	li r22, 0
/* 805CF3AC  3A A0 00 00 */	li r21, 0
/* 805CF3B0  3B E0 00 00 */	li r31, 0
/* 805CF3B4  3A 80 00 00 */	li r20, 0
/* 805CF3B8  3B 00 00 00 */	li r24, 0
/* 805CF3BC  48 00 00 68 */	b lbl_805CF424
lbl_805CF3C0:
/* 805CF3C0  88 79 00 00 */	lbz r3, 0(r25)
/* 805CF3C4  38 80 00 01 */	li r4, 1
/* 805CF3C8  4B DE 02 D5 */	bl mFont_GetCodeWidth
/* 805CF3CC  7C 14 1A 14 */	add r0, r20, r3
/* 805CF3D0  7C 14 07 34 */	extsh r20, r0
/* 805CF3D4  2C 14 00 C0 */	cmpwi r20, 0xc0
/* 805CF3D8  41 81 00 10 */	bgt lbl_805CF3E8
/* 805CF3DC  88 19 00 00 */	lbz r0, 0(r25)
/* 805CF3E0  28 00 00 CD */	cmplwi r0, 0xcd
/* 805CF3E4  40 82 00 30 */	bne lbl_805CF414
lbl_805CF3E8:
/* 805CF3E8  88 19 00 00 */	lbz r0, 0(r25)
/* 805CF3EC  7E B3 AB 78 */	mr r19, r21
/* 805CF3F0  3A A0 00 00 */	li r21, 0
/* 805CF3F4  3A 80 00 00 */	li r20, 0
/* 805CF3F8  28 00 00 CD */	cmplwi r0, 0xcd
/* 805CF3FC  3B FF 00 01 */	addi r31, r31, 1
/* 805CF400  40 82 00 1C */	bne lbl_805CF41C
/* 805CF404  7E FE BB 78 */	mr r30, r23
/* 805CF408  3A E0 00 00 */	li r23, 0
/* 805CF40C  3A D6 00 01 */	addi r22, r22, 1
/* 805CF410  48 00 00 0C */	b lbl_805CF41C
lbl_805CF414:
/* 805CF414  3A F7 00 01 */	addi r23, r23, 1
/* 805CF418  3A B5 00 01 */	addi r21, r21, 1
lbl_805CF41C:
/* 805CF41C  3B 39 00 01 */	addi r25, r25, 1
/* 805CF420  3B 18 00 01 */	addi r24, r24, 1
lbl_805CF424:
/* 805CF424  7C 18 90 00 */	cmpw r24, r18
/* 805CF428  41 80 FF 98 */	blt lbl_805CF3C0
/* 805CF42C  7F E0 07 34 */	extsh r0, r31
/* 805CF430  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805CF434  41 80 00 10 */	blt lbl_805CF444
/* 805CF438  38 13 00 01 */	addi r0, r19, 1
/* 805CF43C  3B E0 00 1E */	li r31, 0x1e
/* 805CF440  7C 15 07 34 */	extsh r21, r0
lbl_805CF444:
/* 805CF444  7E C0 07 34 */	extsh r0, r22
/* 805CF448  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805CF44C  41 80 00 10 */	blt lbl_805CF45C
/* 805CF450  38 1E 00 01 */	addi r0, r30, 1
/* 805CF454  3A C0 00 1E */	li r22, 0x1e
/* 805CF458  7C 17 07 34 */	extsh r23, r0
lbl_805CF45C:
/* 805CF45C  28 1C 00 00 */	cmplwi r28, 0
/* 805CF460  41 82 00 08 */	beq lbl_805CF468
/* 805CF464  B2 FC 00 00 */	sth r23, 0(r28)
lbl_805CF468:
/* 805CF468  28 1D 00 00 */	cmplwi r29, 0
/* 805CF46C  41 82 00 08 */	beq lbl_805CF474
/* 805CF470  B2 DD 00 00 */	sth r22, 0(r29)
lbl_805CF474:
/* 805CF474  28 1A 00 00 */	cmplwi r26, 0
/* 805CF478  41 82 00 08 */	beq lbl_805CF480
/* 805CF47C  B2 BA 00 00 */	sth r21, 0(r26)
lbl_805CF480:
/* 805CF480  28 1B 00 00 */	cmplwi r27, 0
/* 805CF484  41 82 00 08 */	beq lbl_805CF48C
/* 805CF488  B3 FB 00 00 */	sth r31, 0(r27)
lbl_805CF48C:
/* 805CF48C  39 61 00 40 */	addi r11, r1, 0x40
/* 805CF490  4B AC BA 65 */	bl func_8009AEF4
/* 805CF494  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805CF498  7C 08 03 A6 */	mtlr r0
/* 805CF49C  38 21 00 40 */	addi r1, r1, 0x40
/* 805CF4A0  4E 80 00 20 */	blr 
