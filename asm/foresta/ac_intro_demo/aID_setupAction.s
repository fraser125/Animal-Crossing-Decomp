lbl_8042B514:
/* 8042B514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B518  7C 08 02 A6 */	mflr r0
/* 8042B51C  3C C0 80 68 */	lis r6, process@ha /* 0x806841AC@ha */
/* 8042B520  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B524  54 A0 10 3A */	slwi r0, r5, 2
/* 8042B528  38 C6 41 AC */	addi r6, r6, process@l /* 0x806841AC@l */
/* 8042B52C  7C 06 00 2E */	lwzx r0, r6, r0
/* 8042B530  90 03 01 7C */	stw r0, 0x17c(r3)
/* 8042B534  90 A3 01 74 */	stw r5, 0x174(r3)
/* 8042B538  4B FF FF A9 */	bl aID_init_proc
/* 8042B53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B540  7C 08 03 A6 */	mtlr r0
/* 8042B544  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B548  4E 80 00 20 */	blr 
