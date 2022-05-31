lbl_80489FDC:
/* 80489FDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80489FE0  7C 08 02 A6 */	mflr r0
/* 80489FE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80489FE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80489FEC  4B C1 0E E1 */	bl func_8009AECC
/* 80489FF0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80489FF4  7C 7B 1B 78 */	mr r27, r3
/* 80489FF8  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80489FFC  7C 9C 23 78 */	mr r28, r4
/* 8048A000  3F E3 00 02 */	addis r31, r3, 2
/* 8048A004  3B A0 FF FF */	li r29, -1
/* 8048A008  3B C0 00 00 */	li r30, 0
/* 8048A00C  3B FF 61 64 */	addi r31, r31, 0x6164
lbl_8048A010:
/* 8048A010  38 7F 00 20 */	addi r3, r31, 0x20
/* 8048A014  4B F5 8B BD */	bl mQst_CheckFreeQuest
/* 8048A018  2C 03 00 00 */	cmpwi r3, 0
/* 8048A01C  40 82 00 28 */	bne lbl_8048A044
/* 8048A020  88 7F 00 20 */	lbz r3, 0x20(r31)
/* 8048A024  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 8048A028  7C 00 D8 00 */	cmpw r0, r27
/* 8048A02C  40 82 00 18 */	bne lbl_8048A044
/* 8048A030  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 8048A034  7C 00 E0 00 */	cmpw r0, r28
/* 8048A038  40 82 00 0C */	bne lbl_8048A044
/* 8048A03C  7F DD F3 78 */	mr r29, r30
/* 8048A040  48 00 00 14 */	b lbl_8048A054
lbl_8048A044:
/* 8048A044  3B DE 00 01 */	addi r30, r30, 1
/* 8048A048  3B FF 00 38 */	addi r31, r31, 0x38
/* 8048A04C  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8048A050  41 80 FF C0 */	blt lbl_8048A010
lbl_8048A054:
/* 8048A054  7F A3 EB 78 */	mr r3, r29
/* 8048A058  39 61 00 20 */	addi r11, r1, 0x20
/* 8048A05C  4B C1 0E BD */	bl func_8009AF18
/* 8048A060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048A064  7C 08 03 A6 */	mtlr r0
/* 8048A068  38 21 00 20 */	addi r1, r1, 0x20
/* 8048A06C  4E 80 00 20 */	blr 
