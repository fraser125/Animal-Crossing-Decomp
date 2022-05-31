lbl_8050AFBC:
/* 8050AFBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050AFC0  7C 08 02 A6 */	mflr r0
/* 8050AFC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050AFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8050AFCC  4B B8 FF 05 */	bl func_8009AED0
/* 8050AFD0  7C 7C 1B 78 */	mr r28, r3
/* 8050AFD4  3B A0 00 01 */	li r29, 1
/* 8050AFD8  3B C0 00 3F */	li r30, 0x3f
/* 8050AFDC  3B E0 00 40 */	li r31, 0x40
lbl_8050AFE0:
/* 8050AFE0  7F A3 EB 78 */	mr r3, r29
/* 8050AFE4  38 80 00 06 */	li r4, 6
/* 8050AFE8  4B FF DE 55 */	bl mRF_D2ToD1
/* 8050AFEC  7C 1C 18 AE */	lbzx r0, r28, r3
/* 8050AFF0  28 00 00 27 */	cmplwi r0, 0x27
/* 8050AFF4  40 82 00 0C */	bne lbl_8050B000
/* 8050AFF8  7F DC 19 AE */	stbx r30, r28, r3
/* 8050AFFC  48 00 00 10 */	b lbl_8050B00C
lbl_8050B000:
/* 8050B000  28 00 00 28 */	cmplwi r0, 0x28
/* 8050B004  40 82 00 08 */	bne lbl_8050B00C
/* 8050B008  7F FC 19 AE */	stbx r31, r28, r3
lbl_8050B00C:
/* 8050B00C  3B BD 00 01 */	addi r29, r29, 1
/* 8050B010  2C 1D 00 06 */	cmpwi r29, 6
/* 8050B014  41 80 FF CC */	blt lbl_8050AFE0
/* 8050B018  3B E0 00 50 */	li r31, 0x50
/* 8050B01C  38 60 00 00 */	li r3, 0
/* 8050B020  38 80 00 06 */	li r4, 6
/* 8050B024  4B FF DE 19 */	bl mRF_D2ToD1
/* 8050B028  7F FC 19 AE */	stbx r31, r28, r3
/* 8050B02C  3B E0 00 51 */	li r31, 0x51
/* 8050B030  38 60 00 06 */	li r3, 6
/* 8050B034  38 80 00 06 */	li r4, 6
/* 8050B038  4B FF DE 05 */	bl mRF_D2ToD1
/* 8050B03C  7F FC 19 AE */	stbx r31, r28, r3
/* 8050B040  39 61 00 20 */	addi r11, r1, 0x20
/* 8050B044  4B B8 FE D9 */	bl func_8009AF1C
/* 8050B048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050B04C  7C 08 03 A6 */	mtlr r0
/* 8050B050  38 21 00 20 */	addi r1, r1, 0x20
/* 8050B054  4E 80 00 20 */	blr 
