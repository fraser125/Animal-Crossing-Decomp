lbl_8050A6F0:
/* 8050A6F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050A6F4  7C 08 02 A6 */	mflr r0
/* 8050A6F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050A6FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8050A700  4B B9 07 D5 */	bl func_8009AED4
/* 8050A704  7C 7D 1B 78 */	mr r29, r3
/* 8050A708  3B C0 00 00 */	li r30, 0
/* 8050A70C  3B E0 00 00 */	li r31, 0
lbl_8050A710:
/* 8050A710  7F E4 FB 78 */	mr r4, r31
/* 8050A714  38 60 00 00 */	li r3, 0
/* 8050A718  4B FF E7 25 */	bl mRF_D2ToD1
/* 8050A71C  7C 1D 18 AE */	lbzx r0, r29, r3
/* 8050A720  28 00 00 3D */	cmplwi r0, 0x3d
/* 8050A724  40 82 00 90 */	bne lbl_8050A7B4
/* 8050A728  7F A3 EB 78 */	mr r3, r29
/* 8050A72C  7F E5 FB 78 */	mr r5, r31
/* 8050A730  38 80 00 00 */	li r4, 0
/* 8050A734  38 C0 00 00 */	li r6, 0
/* 8050A738  4B FF FD D5 */	bl mRF_CountDirectedInfoCliff
/* 8050A73C  2C 03 00 00 */	cmpwi r3, 0
/* 8050A740  41 82 00 30 */	beq lbl_8050A770
/* 8050A744  4B FF E6 9D */	bl mRF_GetRandom
/* 8050A748  7C 60 1B 78 */	mr r0, r3
/* 8050A74C  7F A3 EB 78 */	mr r3, r29
/* 8050A750  7C 07 03 78 */	mr r7, r0
/* 8050A754  7F E5 FB 78 */	mr r5, r31
/* 8050A758  38 80 00 00 */	li r4, 0
/* 8050A75C  38 C0 00 00 */	li r6, 0
/* 8050A760  4B FF FE 8D */	bl mRF_SetSlopeDirectedInfoCliff
/* 8050A764  2C 03 00 00 */	cmpwi r3, 0
/* 8050A768  41 82 00 08 */	beq lbl_8050A770
/* 8050A76C  63 DE 00 01 */	ori r30, r30, 1
lbl_8050A770:
/* 8050A770  7F A3 EB 78 */	mr r3, r29
/* 8050A774  7F E5 FB 78 */	mr r5, r31
/* 8050A778  38 80 00 00 */	li r4, 0
/* 8050A77C  38 C0 00 01 */	li r6, 1
/* 8050A780  4B FF FD 8D */	bl mRF_CountDirectedInfoCliff
/* 8050A784  2C 03 00 00 */	cmpwi r3, 0
/* 8050A788  41 82 00 2C */	beq lbl_8050A7B4
/* 8050A78C  4B FF E6 55 */	bl mRF_GetRandom
/* 8050A790  7C 67 1B 78 */	mr r7, r3
/* 8050A794  7F A3 EB 78 */	mr r3, r29
/* 8050A798  7F E5 FB 78 */	mr r5, r31
/* 8050A79C  38 80 00 00 */	li r4, 0
/* 8050A7A0  38 C0 00 01 */	li r6, 1
/* 8050A7A4  4B FF FE 49 */	bl mRF_SetSlopeDirectedInfoCliff
/* 8050A7A8  2C 03 00 00 */	cmpwi r3, 0
/* 8050A7AC  41 82 00 08 */	beq lbl_8050A7B4
/* 8050A7B0  63 DE 00 02 */	ori r30, r30, 2
lbl_8050A7B4:
/* 8050A7B4  3B FF 00 01 */	addi r31, r31, 1
/* 8050A7B8  2C 1F 00 08 */	cmpwi r31, 8
/* 8050A7BC  41 80 FF 54 */	blt lbl_8050A710
/* 8050A7C0  7F C3 F3 78 */	mr r3, r30
/* 8050A7C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8050A7C8  4B B9 07 59 */	bl func_8009AF20
/* 8050A7CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050A7D0  7C 08 03 A6 */	mtlr r0
/* 8050A7D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8050A7D8  4E 80 00 20 */	blr 
