lbl_8039B6A0:
/* 8039B6A0  3C 60 81 16 */	lis r3, event_today@ha /* 0x811676AC@ha */
/* 8039B6A4  38 00 00 10 */	li r0, 0x10
/* 8039B6A8  38 A3 76 AC */	addi r5, r3, event_today@l /* 0x811676AC@l */
/* 8039B6AC  38 60 00 00 */	li r3, 0
/* 8039B6B0  38 80 00 00 */	li r4, 0
/* 8039B6B4  7C 09 03 A6 */	mtctr r0
lbl_8039B6B8:
/* 8039B6B8  7C 05 20 2E */	lwzx r0, r5, r4
/* 8039B6BC  2C 00 FF FF */	cmpwi r0, -1
/* 8039B6C0  4D 82 00 20 */	beqlr 
/* 8039B6C4  38 63 00 01 */	addi r3, r3, 1
/* 8039B6C8  38 84 00 10 */	addi r4, r4, 0x10
/* 8039B6CC  42 00 FF EC */	bdnz lbl_8039B6B8
/* 8039B6D0  4E 80 00 20 */	blr 
