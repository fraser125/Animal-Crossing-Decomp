lbl_8050A000:
/* 8050A000  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050A004  7C 08 02 A6 */	mflr r0
/* 8050A008  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050A00C  39 61 00 30 */	addi r11, r1, 0x30
/* 8050A010  4B B9 0E AD */	bl func_8009AEBC
/* 8050A014  7C FA 3B 78 */	mr r26, r7
/* 8050A018  7C 77 1B 78 */	mr r23, r3
/* 8050A01C  7C 98 23 78 */	mr r24, r4
/* 8050A020  7C D9 33 78 */	mr r25, r6
/* 8050A024  54 BD 06 3E */	clrlwi r29, r5, 0x18
/* 8050A028  7F 5E 07 34 */	extsh r30, r26
/* 8050A02C  3B 60 00 00 */	li r27, 0
/* 8050A030  3B 80 00 00 */	li r28, 0
/* 8050A034  3B E0 00 00 */	li r31, 0
/* 8050A038  48 00 00 68 */	b lbl_8050A0A0
lbl_8050A03C:
/* 8050A03C  38 1F 00 04 */	addi r0, r31, 4
/* 8050A040  7C 17 00 AE */	lbzx r0, r23, r0
/* 8050A044  7C 1D 00 40 */	cmplw r29, r0
/* 8050A048  40 82 00 50 */	bne lbl_8050A098
/* 8050A04C  7F 40 07 35 */	extsh. r0, r26
/* 8050A050  40 82 00 2C */	bne lbl_8050A07C
/* 8050A054  7F 83 07 34 */	extsh r3, r28
/* 8050A058  4B FF FE CD */	bl mRF_SearchAlreadyUse
/* 8050A05C  2C 03 00 00 */	cmpwi r3, 0
/* 8050A060  40 82 00 38 */	bne lbl_8050A098
/* 8050A064  7C 1B C8 00 */	cmpw r27, r25
/* 8050A068  40 82 00 0C */	bne lbl_8050A074
/* 8050A06C  7F 83 07 34 */	extsh r3, r28
/* 8050A070  48 00 00 3C */	b lbl_8050A0AC
lbl_8050A074:
/* 8050A074  3B 7B 00 01 */	addi r27, r27, 1
/* 8050A078  48 00 00 20 */	b lbl_8050A098
lbl_8050A07C:
/* 8050A07C  2C 1E 00 01 */	cmpwi r30, 1
/* 8050A080  40 82 00 18 */	bne lbl_8050A098
/* 8050A084  7C 1B C8 00 */	cmpw r27, r25
/* 8050A088  40 82 00 0C */	bne lbl_8050A094
/* 8050A08C  7F 83 07 34 */	extsh r3, r28
/* 8050A090  48 00 00 1C */	b lbl_8050A0AC
lbl_8050A094:
/* 8050A094  3B 7B 00 01 */	addi r27, r27, 1
lbl_8050A098:
/* 8050A098  3B 9C 00 01 */	addi r28, r28, 1
/* 8050A09C  3B FF 00 06 */	addi r31, r31, 6
lbl_8050A0A0:
/* 8050A0A0  7C 1C C0 00 */	cmpw r28, r24
/* 8050A0A4  41 80 FF 98 */	blt lbl_8050A03C
/* 8050A0A8  38 60 FF FF */	li r3, -1
lbl_8050A0AC:
/* 8050A0AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8050A0B0  4B B9 0E 59 */	bl func_8009AF08
/* 8050A0B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050A0B8  7C 08 03 A6 */	mtlr r0
/* 8050A0BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8050A0C0  4E 80 00 20 */	blr 
