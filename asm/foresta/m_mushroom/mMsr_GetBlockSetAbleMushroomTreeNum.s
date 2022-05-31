lbl_803C88F0:
/* 803C88F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C88F4  7C 08 02 A6 */	mflr r0
/* 803C88F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C88FC  39 61 00 20 */	addi r11, r1, 0x20
/* 803C8900  4B CD 25 D1 */	bl func_8009AED0
/* 803C8904  7C 7C 1B 78 */	mr r28, r3
/* 803C8908  3B E0 00 00 */	li r31, 0
/* 803C890C  3B C0 00 00 */	li r30, 0
/* 803C8910  48 00 00 48 */	b lbl_803C8958
lbl_803C8914:
/* 803C8914  3B A0 00 00 */	li r29, 0
/* 803C8918  48 00 00 30 */	b lbl_803C8948
lbl_803C891C:
/* 803C891C  7F 83 E3 78 */	mr r3, r28
/* 803C8920  7F A4 EB 78 */	mr r4, r29
/* 803C8924  7F C5 F3 78 */	mr r5, r30
/* 803C8928  4B FF FE F9 */	bl mMsr_CheckAroundTree
/* 803C892C  2C 03 00 01 */	cmpwi r3, 1
/* 803C8930  40 82 00 10 */	bne lbl_803C8940
/* 803C8934  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 803C8938  38 03 00 01 */	addi r0, r3, 1
/* 803C893C  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_803C8940:
/* 803C8940  3B 9C 00 02 */	addi r28, r28, 2
/* 803C8944  3B BD 00 01 */	addi r29, r29, 1
lbl_803C8948:
/* 803C8948  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803C894C  28 00 00 10 */	cmplwi r0, 0x10
/* 803C8950  41 80 FF CC */	blt lbl_803C891C
/* 803C8954  3B DE 00 01 */	addi r30, r30, 1
lbl_803C8958:
/* 803C8958  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 803C895C  28 00 00 10 */	cmplwi r0, 0x10
/* 803C8960  41 80 FF B4 */	blt lbl_803C8914
/* 803C8964  7F E3 FB 78 */	mr r3, r31
/* 803C8968  39 61 00 20 */	addi r11, r1, 0x20
/* 803C896C  4B CD 25 B1 */	bl func_8009AF1C
/* 803C8970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C8974  7C 08 03 A6 */	mtlr r0
/* 803C8978  38 21 00 20 */	addi r1, r1, 0x20
/* 803C897C  4E 80 00 20 */	blr 
