lbl_80521AC4:
/* 80521AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521AC8  7C 08 02 A6 */	mflr r0
/* 80521ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521AD0  4B FF F9 D9 */	bl func_805214A8
/* 80521AD4  2C 03 00 01 */	cmpwi r3, 1
/* 80521AD8  38 60 06 FD */	li r3, 0x6fd
/* 80521ADC  40 82 00 08 */	bne lbl_80521AE4
/* 80521AE0  38 60 07 18 */	li r3, 0x718
lbl_80521AE4:
/* 80521AE4  4B E7 6A 31 */	bl mDemo_Set_msg_num
/* 80521AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521AEC  7C 08 03 A6 */	mtlr r0
/* 80521AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80521AF4  4E 80 00 20 */	blr 
