lbl_803D7818:
/* 803D7818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D781C  7C 08 02 A6 */	mflr r0
/* 803D7820  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7824  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7828  4B CC 36 A5 */	bl func_8009AECC
/* 803D782C  7C 7B 1B 78 */	mr r27, r3
/* 803D7830  7C 9C 23 78 */	mr r28, r4
/* 803D7834  3B A0 FF FF */	li r29, -1
/* 803D7838  3B C0 00 05 */	li r30, 5
/* 803D783C  3B E0 00 04 */	li r31, 4
/* 803D7840  48 00 00 34 */	b lbl_803D7874
lbl_803D7844:
/* 803D7844  7F 63 DB 78 */	mr r3, r27
/* 803D7848  38 80 00 1C */	li r4, 0x1c
/* 803D784C  4B C8 58 1D */	bl bzero
/* 803D7850  7F 63 DB 78 */	mr r3, r27
/* 803D7854  4B FF 3B 31 */	bl mNpc_ClearAnimalPersonalID
/* 803D7858  93 BB 00 10 */	stw r29, 0x10(r27)
/* 803D785C  38 7B 00 18 */	addi r3, r27, 0x18
/* 803D7860  9B DB 00 14 */	stb r30, 0x14(r27)
/* 803D7864  9B FB 00 15 */	stb r31, 0x15(r27)
/* 803D7868  4B FF FF 9D */	bl mNpcW_ClearNpcWalkAppear
/* 803D786C  3B 7B 00 1C */	addi r27, r27, 0x1c
/* 803D7870  3B 9C FF FF */	addi r28, r28, -1
lbl_803D7874:
/* 803D7874  2C 1C 00 00 */	cmpwi r28, 0
/* 803D7878  41 82 00 0C */	beq lbl_803D7884
/* 803D787C  28 1B 00 00 */	cmplwi r27, 0
/* 803D7880  40 82 FF C4 */	bne lbl_803D7844
lbl_803D7884:
/* 803D7884  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7888  4B CC 36 91 */	bl func_8009AF18
/* 803D788C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7890  7C 08 03 A6 */	mtlr r0
/* 803D7894  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7898  4E 80 00 20 */	blr 
