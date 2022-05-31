lbl_805245A8:
/* 805245A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805245AC  7C 08 02 A6 */	mflr r0
/* 805245B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805245B4  4B FF FB 7D */	bl func_80524130
/* 805245B8  4B E7 5D FD */	bl mDemo_Set_ListenAble
/* 805245BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805245C0  38 60 00 01 */	li r3, 1
/* 805245C4  7C 08 03 A6 */	mtlr r0
/* 805245C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805245CC  4E 80 00 20 */	blr 
