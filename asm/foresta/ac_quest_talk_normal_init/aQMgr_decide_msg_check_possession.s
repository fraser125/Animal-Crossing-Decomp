lbl_80491928:
/* 80491928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049192C  7C 08 02 A6 */	mflr r0
/* 80491930  90 01 00 24 */	stw r0, 0x24(r1)
/* 80491934  39 61 00 20 */	addi r11, r1, 0x20
/* 80491938  4B C0 95 95 */	bl func_8009AECC
/* 8049193C  28 03 00 00 */	cmplwi r3, 0
/* 80491940  7C 9B 23 78 */	mr r27, r4
/* 80491944  7C BC 2B 78 */	mr r28, r5
/* 80491948  7C DD 33 78 */	mr r29, r6
/* 8049194C  3B C0 FF FF */	li r30, -1
/* 80491950  41 82 00 30 */	beq lbl_80491980
/* 80491954  7C 6C 1B 78 */	mr r12, r3
/* 80491958  7C E3 3B 78 */	mr r3, r7
/* 8049195C  7D 89 03 A6 */	mtctr r12
/* 80491960  4E 80 04 21 */	bctrl 
/* 80491964  7C 7F 1B 78 */	mr r31, r3
/* 80491968  2C 1F FF FF */	cmpwi r31, -1
/* 8049196C  41 82 00 14 */	beq lbl_80491980
/* 80491970  7F A3 EB 78 */	mr r3, r29
/* 80491974  4B F5 2A 5D */	bl mQst_GetRandom
/* 80491978  7F DB 1A 14 */	add r30, r27, r3
/* 8049197C  93 FC 00 00 */	stw r31, 0(r28)
lbl_80491980:
/* 80491980  7F C3 F3 78 */	mr r3, r30
/* 80491984  39 61 00 20 */	addi r11, r1, 0x20
/* 80491988  4B C0 95 91 */	bl func_8009AF18
/* 8049198C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80491990  7C 08 03 A6 */	mtlr r0
/* 80491994  38 21 00 20 */	addi r1, r1, 0x20
/* 80491998  4E 80 00 20 */	blr 