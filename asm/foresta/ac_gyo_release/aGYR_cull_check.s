lbl_80426240:
/* 80426240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80426244  7C 08 02 A6 */	mflr r0
/* 80426248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042624C  88 04 00 E4 */	lbz r0, 0xe4(r4)
/* 80426250  88 A3 00 08 */	lbz r5, 8(r3)
/* 80426254  7C 00 07 74 */	extsb r0, r0
/* 80426258  7C A5 07 74 */	extsb r5, r5
/* 8042625C  7C 05 00 00 */	cmpw r5, r0
/* 80426260  40 82 00 1C */	bne lbl_8042627C
/* 80426264  88 A3 00 09 */	lbz r5, 9(r3)
/* 80426268  88 04 00 E5 */	lbz r0, 0xe5(r4)
/* 8042626C  7C A4 07 74 */	extsb r4, r5
/* 80426270  7C 00 07 74 */	extsb r0, r0
/* 80426274  7C 04 00 00 */	cmpw r4, r0
/* 80426278  41 82 00 08 */	beq lbl_80426280
lbl_8042627C:
/* 8042627C  4B F4 E1 C5 */	bl Actor_delete
lbl_80426280:
/* 80426280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80426284  7C 08 03 A6 */	mtlr r0
/* 80426288  38 21 00 10 */	addi r1, r1, 0x10
/* 8042628C  4E 80 00 20 */	blr 
