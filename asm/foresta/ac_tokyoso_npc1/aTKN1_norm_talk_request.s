lbl_8058C484:
/* 8058C484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C488  7C 08 02 A6 */	mflr r0
/* 8058C48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C490  88 03 09 AC */	lbz r0, 0x9ac(r3)
/* 8058C494  28 00 00 00 */	cmplwi r0, 0
/* 8058C498  40 82 00 1C */	bne lbl_8058C4B4
/* 8058C49C  3C A0 80 59 */	lis r5, func_8058C44C@ha /* 0x8058C44C@ha */
/* 8058C4A0  7C 64 1B 78 */	mr r4, r3
/* 8058C4A4  38 A5 C4 4C */	addi r5, r5, func_8058C44C@l /* 0x8058C44C@l */
/* 8058C4A8  38 60 00 07 */	li r3, 7
/* 8058C4AC  4B E0 DC B1 */	bl mDemo_Request
/* 8058C4B0  48 00 00 0C */	b lbl_8058C4BC
lbl_8058C4B4:
/* 8058C4B4  38 00 00 00 */	li r0, 0
/* 8058C4B8  98 03 09 AC */	stb r0, 0x9ac(r3)
lbl_8058C4BC:
/* 8058C4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C4C0  7C 08 03 A6 */	mtlr r0
/* 8058C4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C4C8  4E 80 00 20 */	blr 
