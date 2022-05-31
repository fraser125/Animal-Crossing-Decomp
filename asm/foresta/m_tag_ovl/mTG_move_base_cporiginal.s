lbl_805FD048:
/* 805FD048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FD04C  7C 08 02 A6 */	mflr r0
/* 805FD050  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FD054  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FD058  80 C6 09 7C */	lwz r6, 0x97c(r6)
/* 805FD05C  A8 06 03 C0 */	lha r0, 0x3c0(r6)
/* 805FD060  2C 00 00 00 */	cmpwi r0, 0
/* 805FD064  41 82 00 0C */	beq lbl_805FD070
/* 805FD068  4B FF FF B5 */	bl mTG_change_cporiginal_mark
/* 805FD06C  48 00 00 08 */	b lbl_805FD074
lbl_805FD070:
/* 805FD070  4B FF F9 D9 */	bl mTG_move_base
lbl_805FD074:
/* 805FD074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FD078  7C 08 03 A6 */	mtlr r0
/* 805FD07C  38 21 00 10 */	addi r1, r1, 0x10
/* 805FD080  4E 80 00 20 */	blr 
