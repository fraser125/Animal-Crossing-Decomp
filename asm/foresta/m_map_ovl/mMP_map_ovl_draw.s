lbl_805E77BC:
/* 805E77BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E77C0  7C 08 02 A6 */	mflr r0
/* 805E77C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E77C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805E77CC  4B AB 37 09 */	bl func_8009AED4
/* 805E77D0  7C 7D 1B 78 */	mr r29, r3
/* 805E77D4  7C 9E 23 78 */	mr r30, r4
/* 805E77D8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E77DC  3B E5 01 BC */	addi r31, r5, 0x1bc
/* 805E77E0  81 85 01 CC */	lwz r12, 0x1cc(r5)
/* 805E77E4  7D 89 03 A6 */	mtctr r12
/* 805E77E8  4E 80 04 21 */	bctrl 
/* 805E77EC  7F A3 EB 78 */	mr r3, r29
/* 805E77F0  7F C4 F3 78 */	mr r4, r30
/* 805E77F4  7F E5 FB 78 */	mr r5, r31
/* 805E77F8  4B FF FD D5 */	bl mMP_set_dl
/* 805E77FC  39 61 00 20 */	addi r11, r1, 0x20
/* 805E7800  4B AB 37 21 */	bl func_8009AF20
/* 805E7804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E7808  7C 08 03 A6 */	mtlr r0
/* 805E780C  38 21 00 20 */	addi r1, r1, 0x20
/* 805E7810  4E 80 00 20 */	blr 
