lbl_8062E118:
/* 8062E118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062E11C  7C 08 02 A6 */	mflr r0
/* 8062E120  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062E124  39 61 00 20 */	addi r11, r1, 0x20
/* 8062E128  4B A6 CD AD */	bl func_8009AED4
/* 8062E12C  7C 7D 1B 78 */	mr r29, r3
/* 8062E130  7C 9E 23 78 */	mr r30, r4
/* 8062E134  7C BF 2B 78 */	mr r31, r5
/* 8062E138  7C C5 33 78 */	mr r5, r6
/* 8062E13C  38 61 00 0C */	addi r3, r1, 0xc
/* 8062E140  38 81 00 08 */	addi r4, r1, 8
/* 8062E144  4B FF F9 D9 */	bl func_8062DB1C
/* 8062E148  A0 C1 00 08 */	lhz r6, 8(r1)
/* 8062E14C  7F A3 EB 78 */	mr r3, r29
/* 8062E150  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062E154  7F C4 F3 78 */	mr r4, r30
/* 8062E158  7F E5 FB 78 */	mr r5, r31
/* 8062E15C  4B 9E 77 7D */	bl Na_FurnitureInst
/* 8062E160  39 61 00 20 */	addi r11, r1, 0x20
/* 8062E164  4B A6 CD BD */	bl func_8009AF20
/* 8062E168  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062E16C  7C 08 03 A6 */	mtlr r0
/* 8062E170  38 21 00 20 */	addi r1, r1, 0x20
/* 8062E174  4E 80 00 20 */	blr 
