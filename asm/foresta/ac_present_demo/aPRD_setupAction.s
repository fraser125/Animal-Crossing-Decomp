lbl_80483F50:
/* 80483F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483F54  7C 08 02 A6 */	mflr r0
/* 80483F58  3C C0 80 69 */	lis r6, process@ha /* 0x8068A344@ha */
/* 80483F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483F60  54 A0 10 3A */	slwi r0, r5, 2
/* 80483F64  38 C6 A3 44 */	addi r6, r6, process@l /* 0x8068A344@l */
/* 80483F68  7C 06 00 2E */	lwzx r0, r6, r0
/* 80483F6C  90 03 01 78 */	stw r0, 0x178(r3)
/* 80483F70  90 A3 01 74 */	stw r5, 0x174(r3)
/* 80483F74  4B FF FF A9 */	bl aPRD_init_proc
/* 80483F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483F7C  7C 08 03 A6 */	mtlr r0
/* 80483F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80483F84  4E 80 00 20 */	blr 
