lbl_80415A40:
/* 80415A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415A44  7C 08 02 A6 */	mflr r0
/* 80415A48  3C C0 80 68 */	lis r6, process@ha /* 0x80681764@ha */
/* 80415A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415A50  54 A0 10 3A */	slwi r0, r5, 2
/* 80415A54  38 C6 17 64 */	addi r6, r6, process@l /* 0x80681764@l */
/* 80415A58  7C 06 00 2E */	lwzx r0, r6, r0
/* 80415A5C  90 03 01 78 */	stw r0, 0x178(r3)
/* 80415A60  90 A3 01 74 */	stw r5, 0x174(r3)
/* 80415A64  4B FF FF A9 */	bl aBTD_init_proc
/* 80415A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415A6C  7C 08 03 A6 */	mtlr r0
/* 80415A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80415A74  4E 80 00 20 */	blr 
