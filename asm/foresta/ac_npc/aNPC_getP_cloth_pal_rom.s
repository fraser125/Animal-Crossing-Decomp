lbl_8052C168:
/* 8052C168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C16C  7C 08 02 A6 */	mflr r0
/* 8052C170  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052C178  7C 7F 1B 78 */	mr r31, r3
/* 8052C17C  38 60 00 09 */	li r3, 9
/* 8052C180  4B AD AA 55 */	bl JW_GetAramAddress
/* 8052C184  A0 BF 00 04 */	lhz r5, 4(r31)
/* 8052C188  38 00 00 00 */	li r0, 0
/* 8052C18C  28 05 24 00 */	cmplwi r5, 0x2400
/* 8052C190  41 80 00 10 */	blt lbl_8052C1A0
/* 8052C194  28 05 24 FF */	cmplwi r5, 0x24ff
/* 8052C198  40 80 00 08 */	bge lbl_8052C1A0
/* 8052C19C  38 00 00 01 */	li r0, 1
lbl_8052C1A0:
/* 8052C1A0  20 80 00 00 */	subfic r4, r0, 0
/* 8052C1A4  38 05 DC 00 */	addi r0, r5, -9216
/* 8052C1A8  7C 84 21 10 */	subfe r4, r4, r4
/* 8052C1AC  7C 00 20 38 */	and r0, r0, r4
/* 8052C1B0  54 00 28 34 */	slwi r0, r0, 5
/* 8052C1B4  7C 63 02 14 */	add r3, r3, r0
/* 8052C1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052C1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C1C0  7C 08 03 A6 */	mtlr r0
/* 8052C1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C1C8  4E 80 00 20 */	blr 
