lbl_8056D868:
/* 8056D868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D86C  7C 08 02 A6 */	mflr r0
/* 8056D870  3C C0 80 6C */	lis r6, process@ha /* 0x806BEA70@ha */
/* 8056D874  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D878  54 A0 10 3A */	slwi r0, r5, 2
/* 8056D87C  38 C6 EA 70 */	addi r6, r6, process@l /* 0x806BEA70@l */
/* 8056D880  90 A3 09 94 */	stw r5, 0x994(r3)
/* 8056D884  7C 06 00 2E */	lwzx r0, r6, r0
/* 8056D888  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8056D88C  4B FF FF A9 */	bl aPG_init_proc
/* 8056D890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D894  7C 08 03 A6 */	mtlr r0
/* 8056D898  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D89C  4E 80 00 20 */	blr 
