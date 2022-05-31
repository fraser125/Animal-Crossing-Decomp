lbl_80569DC8:
/* 80569DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569DCC  7C 08 02 A6 */	mflr r0
/* 80569DD0  3C C0 80 6C */	lis r6, process@ha /* 0x806BE6D4@ha */
/* 80569DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569DD8  54 A0 10 3A */	slwi r0, r5, 2
/* 80569DDC  38 C6 E6 D4 */	addi r6, r6, process@l /* 0x806BE6D4@l */
/* 80569DE0  90 A3 09 94 */	stw r5, 0x994(r3)
/* 80569DE4  7C 06 00 2E */	lwzx r0, r6, r0
/* 80569DE8  90 03 09 98 */	stw r0, 0x998(r3)
/* 80569DEC  4B FF FF A9 */	bl aNPS2_talk_init_proc
/* 80569DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569DF4  7C 08 03 A6 */	mtlr r0
/* 80569DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80569DFC  4E 80 00 20 */	blr 
