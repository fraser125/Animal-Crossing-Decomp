lbl_80548940:
/* 80548940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80548944  7C 08 02 A6 */	mflr r0
/* 80548948  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054894C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80548950  7C 9F 23 78 */	mr r31, r4
/* 80548954  93 C1 00 08 */	stw r30, 8(r1)
/* 80548958  7C 7E 1B 78 */	mr r30, r3
/* 8054895C  4B E7 6D 4D */	bl func_803BF6A8
/* 80548960  4B E7 6D E1 */	bl mMsg_Check_main_wait
/* 80548964  2C 03 00 01 */	cmpwi r3, 1
/* 80548968  40 82 00 18 */	bne lbl_80548980
/* 8054896C  80 BE 09 94 */	lwz r5, 0x994(r30)
/* 80548970  7F C3 F3 78 */	mr r3, r30
/* 80548974  7F E4 FB 78 */	mr r4, r31
/* 80548978  38 A5 00 01 */	addi r5, r5, 1
/* 8054897C  48 00 25 A1 */	bl aNSC_setupAction
lbl_80548980:
/* 80548980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80548984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80548988  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054898C  7C 08 03 A6 */	mtlr r0
/* 80548990  38 21 00 10 */	addi r1, r1, 0x10
/* 80548994  4E 80 00 20 */	blr 