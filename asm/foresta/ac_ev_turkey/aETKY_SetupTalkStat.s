lbl_80593D84:
/* 80593D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593D88  7C 08 02 A6 */	mflr r0
/* 80593D8C  3C C0 80 6C */	lis r6, process_715@ha /* 0x806C2B5C@ha */
/* 80593D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593D94  54 A0 10 3A */	slwi r0, r5, 2
/* 80593D98  38 C6 2B 5C */	addi r6, r6, process_715@l /* 0x806C2B5C@l */
/* 80593D9C  90 A3 09 94 */	stw r5, 0x994(r3)
/* 80593DA0  7C 06 00 2E */	lwzx r0, r6, r0
/* 80593DA4  90 03 09 98 */	stw r0, 0x998(r3)
/* 80593DA8  4B FF FB A9 */	bl aETKY_init_proc
/* 80593DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593DB0  7C 08 03 A6 */	mtlr r0
/* 80593DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80593DB8  4E 80 00 20 */	blr 
