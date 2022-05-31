lbl_805AFC00:
/* 805AFC00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AFC04  7C 08 02 A6 */	mflr r0
/* 805AFC08  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AFC0C  39 61 00 20 */	addi r11, r1, 0x20
/* 805AFC10  4B AE B2 C1 */	bl func_8009AED0
/* 805AFC14  7C 7C 1B 78 */	mr r28, r3
/* 805AFC18  3C 60 80 6C */	lis r3, data_806C5240@ha /* 0x806C5240@ha */
/* 805AFC1C  80 1C 02 B0 */	lwz r0, 0x2b0(r28)
/* 805AFC20  3B E3 52 40 */	addi r31, r3, data_806C5240@l /* 0x806C5240@l */
/* 805AFC24  2C 00 00 02 */	cmpwi r0, 2
/* 805AFC28  41 82 00 24 */	beq lbl_805AFC4C
/* 805AFC2C  40 80 00 10 */	bge lbl_805AFC3C
/* 805AFC30  2C 00 00 01 */	cmpwi r0, 1
/* 805AFC34  40 80 00 10 */	bge lbl_805AFC44
/* 805AFC38  48 00 00 14 */	b lbl_805AFC4C
lbl_805AFC3C:
/* 805AFC3C  2C 00 00 04 */	cmpwi r0, 4
/* 805AFC40  40 80 00 0C */	bge lbl_805AFC4C
lbl_805AFC44:
/* 805AFC44  3B DF 01 14 */	addi r30, r31, 0x114
/* 805AFC48  48 00 00 08 */	b lbl_805AFC50
lbl_805AFC4C:
/* 805AFC4C  3B DF 01 24 */	addi r30, r31, 0x124
lbl_805AFC50:
/* 805AFC50  3B A0 00 00 */	li r29, 0
lbl_805AFC54:
/* 805AFC54  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805AFC58  38 7C 01 78 */	addi r3, r28, 0x178
/* 805AFC5C  4B DC 08 2D */	bl cKF_FrameControl_passCheck_now
/* 805AFC60  2C 03 00 00 */	cmpwi r3, 0
/* 805AFC64  41 82 00 1C */	beq lbl_805AFC80
/* 805AFC68  57 A0 08 3C */	slwi r0, r29, 1
/* 805AFC6C  38 7F 01 34 */	addi r3, r31, 0x134
/* 805AFC70  7C 83 02 2E */	lhzx r4, r3, r0
/* 805AFC74  7F 83 E3 78 */	mr r3, r28
/* 805AFC78  4B FF FD A1 */	bl func_805AFA18
/* 805AFC7C  48 00 00 14 */	b lbl_805AFC90
lbl_805AFC80:
/* 805AFC80  3B BD 00 01 */	addi r29, r29, 1
/* 805AFC84  3B DE 00 04 */	addi r30, r30, 4
/* 805AFC88  2C 1D 00 04 */	cmpwi r29, 4
/* 805AFC8C  41 80 FF C8 */	blt lbl_805AFC54
lbl_805AFC90:
/* 805AFC90  39 61 00 20 */	addi r11, r1, 0x20
/* 805AFC94  4B AE B2 89 */	bl func_8009AF1C
/* 805AFC98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AFC9C  7C 08 03 A6 */	mtlr r0
/* 805AFCA0  38 21 00 20 */	addi r1, r1, 0x20
/* 805AFCA4  4E 80 00 20 */	blr 
