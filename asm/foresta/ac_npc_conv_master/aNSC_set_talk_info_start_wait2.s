lbl_80547B7C:
/* 80547B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80547B80  7C 08 02 A6 */	mflr r0
/* 80547B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80547B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80547B8C  7C 7F 1B 78 */	mr r31, r3
/* 80547B90  38 60 00 DA */	li r3, 0xda
/* 80547B94  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80547B98  28 00 D0 0B */	cmplwi r0, 0xd00b
/* 80547B9C  40 82 00 08 */	bne lbl_80547BA4
/* 80547BA0  38 60 00 DC */	li r3, 0xdc
lbl_80547BA4:
/* 80547BA4  4B FF F1 41 */	bl aNSC_get_msg_no
/* 80547BA8  4B E5 09 6D */	bl mDemo_Set_msg_num
/* 80547BAC  38 00 00 07 */	li r0, 7
/* 80547BB0  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80547BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80547BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80547BBC  7C 08 03 A6 */	mtlr r0
/* 80547BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80547BC4  4E 80 00 20 */	blr 
