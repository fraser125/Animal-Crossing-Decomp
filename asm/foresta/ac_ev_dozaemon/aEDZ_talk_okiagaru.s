lbl_8051E728:
/* 8051E728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E72C  7C 08 02 A6 */	mflr r0
/* 8051E730  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051E738  7C 7F 1B 78 */	mr r31, r3
/* 8051E73C  4B EA 0F 6D */	bl func_803BF6A8
/* 8051E740  4B EA 25 59 */	bl mMsg_Check_MainNormalContinue
/* 8051E744  2C 03 00 00 */	cmpwi r3, 0
/* 8051E748  41 82 00 0C */	beq lbl_8051E754
/* 8051E74C  7F E3 FB 78 */	mr r3, r31
/* 8051E750  4B FF FD 61 */	bl func_8051E4B0
lbl_8051E754:
/* 8051E754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051E75C  7C 08 03 A6 */	mtlr r0
/* 8051E760  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E764  4E 80 00 20 */	blr 
