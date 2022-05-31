lbl_805AE758:
/* 805AE758  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AE75C  7C 08 02 A6 */	mflr r0
/* 805AE760  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AE764  39 61 00 20 */	addi r11, r1, 0x20
/* 805AE768  4B AE C7 6D */	bl func_8009AED4
/* 805AE76C  2C 04 00 00 */	cmpwi r4, 0
/* 805AE770  7C 7D 1B 78 */	mr r29, r3
/* 805AE774  38 00 00 04 */	li r0, 4
/* 805AE778  7C 1F 07 34 */	extsh r31, r0
/* 805AE77C  3B C0 00 00 */	li r30, 0
lbl_805AE780:
/* 805AE780  7F A3 EB 78 */	mr r3, r29
/* 805AE784  7F C5 F3 78 */	mr r5, r30
/* 805AE788  7F E6 FB 78 */	mr r6, r31
/* 805AE78C  38 80 00 00 */	li r4, 0
/* 805AE790  4B FF FF 09 */	bl func_805AE698
/* 805AE794  7F A3 EB 78 */	mr r3, r29
/* 805AE798  7F C5 F3 78 */	mr r5, r30
/* 805AE79C  7F E6 FB 78 */	mr r6, r31
/* 805AE7A0  38 80 00 01 */	li r4, 1
/* 805AE7A4  4B FF FE F5 */	bl func_805AE698
/* 805AE7A8  7F A3 EB 78 */	mr r3, r29
/* 805AE7AC  7F C5 F3 78 */	mr r5, r30
/* 805AE7B0  7F E6 FB 78 */	mr r6, r31
/* 805AE7B4  38 80 00 02 */	li r4, 2
/* 805AE7B8  4B FF FE E1 */	bl func_805AE698
/* 805AE7BC  7F A3 EB 78 */	mr r3, r29
/* 805AE7C0  7F C5 F3 78 */	mr r5, r30
/* 805AE7C4  7F E6 FB 78 */	mr r6, r31
/* 805AE7C8  38 80 00 03 */	li r4, 3
/* 805AE7CC  4B FF FE CD */	bl func_805AE698
/* 805AE7D0  7F A3 EB 78 */	mr r3, r29
/* 805AE7D4  7F C5 F3 78 */	mr r5, r30
/* 805AE7D8  7F E6 FB 78 */	mr r6, r31
/* 805AE7DC  38 80 00 04 */	li r4, 4
/* 805AE7E0  4B FF FE B9 */	bl func_805AE698
/* 805AE7E4  7F A3 EB 78 */	mr r3, r29
/* 805AE7E8  7F C5 F3 78 */	mr r5, r30
/* 805AE7EC  7F E6 FB 78 */	mr r6, r31
/* 805AE7F0  38 80 00 05 */	li r4, 5
/* 805AE7F4  4B FF FE A5 */	bl func_805AE698
/* 805AE7F8  3B DE 00 01 */	addi r30, r30, 1
/* 805AE7FC  2C 1E 00 06 */	cmpwi r30, 6
/* 805AE800  41 80 FF 80 */	blt lbl_805AE780
/* 805AE804  39 61 00 20 */	addi r11, r1, 0x20
/* 805AE808  4B AE C7 19 */	bl func_8009AF20
/* 805AE80C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AE810  7C 08 03 A6 */	mtlr r0
/* 805AE814  38 21 00 20 */	addi r1, r1, 0x20
/* 805AE818  4E 80 00 20 */	blr 
