lbl_8054CB90:
/* 8054CB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CB94  7C 08 02 A6 */	mflr r0
/* 8054CB98  3C C0 80 6A */	lis r6, process_1041@ha /* 0x806A5344@ha */
/* 8054CB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CBA0  54 A0 10 3A */	slwi r0, r5, 2
/* 8054CBA4  38 C6 53 44 */	addi r6, r6, process_1041@l /* 0x806A5344@l */
/* 8054CBA8  90 A3 09 A0 */	stw r5, 0x9a0(r3)
/* 8054CBAC  7C 06 00 2E */	lwzx r0, r6, r0
/* 8054CBB0  90 03 09 A4 */	stw r0, 0x9a4(r3)
/* 8054CBB4  4B FF FF A9 */	bl aCR_talk_init_proc
/* 8054CBB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CBBC  7C 08 03 A6 */	mtlr r0
/* 8054CBC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CBC4  4E 80 00 20 */	blr 
