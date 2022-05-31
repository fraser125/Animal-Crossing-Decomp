lbl_8052F4FC:
/* 8052F4FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052F500  7C 08 02 A6 */	mflr r0
/* 8052F504  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052F508  39 61 00 20 */	addi r11, r1, 0x20
/* 8052F50C  4B B6 B9 C5 */	bl func_8009AED0
/* 8052F510  7C 7C 1B 78 */	mr r28, r3
/* 8052F514  7C 9D 23 78 */	mr r29, r4
/* 8052F518  80 E3 01 7C */	lwz r7, 0x17c(r3)
/* 8052F51C  7F A3 EB 78 */	mr r3, r29
/* 8052F520  88 87 08 99 */	lbz r4, 0x899(r7)
/* 8052F524  88 07 08 9A */	lbz r0, 0x89a(r7)
/* 8052F528  88 C7 08 9B */	lbz r6, 0x89b(r7)
/* 8052F52C  54 85 20 36 */	slwi r5, r4, 4
/* 8052F530  88 87 08 9C */	lbz r4, 0x89c(r7)
/* 8052F534  54 00 20 36 */	slwi r0, r0, 4
/* 8052F538  7F E6 2A 14 */	add r31, r6, r5
/* 8052F53C  7F C4 02 14 */	add r30, r4, r0
/* 8052F540  7F E4 FB 78 */	mr r4, r31
/* 8052F544  7F C5 F3 78 */	mr r5, r30
/* 8052F548  4B FF FE 4D */	bl aNPC_check_entrance_pl
/* 8052F54C  2C 03 00 00 */	cmpwi r3, 0
/* 8052F550  40 82 00 18 */	bne lbl_8052F568
/* 8052F554  7F A3 EB 78 */	mr r3, r29
/* 8052F558  7F 84 E3 78 */	mr r4, r28
/* 8052F55C  7F E5 FB 78 */	mr r5, r31
/* 8052F560  7F C6 F3 78 */	mr r6, r30
/* 8052F564  4B FF FE D9 */	bl aNPC_check_entrance_npc
lbl_8052F568:
/* 8052F568  39 61 00 20 */	addi r11, r1, 0x20
/* 8052F56C  4B B6 B9 B1 */	bl func_8009AF1C
/* 8052F570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052F574  7C 08 03 A6 */	mtlr r0
/* 8052F578  38 21 00 20 */	addi r1, r1, 0x20
/* 8052F57C  4E 80 00 20 */	blr 
