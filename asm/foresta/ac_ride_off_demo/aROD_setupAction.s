lbl_8049665C:
/* 8049665C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496660  7C 08 02 A6 */	mflr r0
/* 80496664  3C C0 80 69 */	lis r6, process@ha /* 0x8068BA6C@ha */
/* 80496668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049666C  54 A0 10 3A */	slwi r0, r5, 2
/* 80496670  38 C6 BA 6C */	addi r6, r6, process@l /* 0x8068BA6C@l */
/* 80496674  7C 06 00 2E */	lwzx r0, r6, r0
/* 80496678  90 03 01 7C */	stw r0, 0x17c(r3)
/* 8049667C  90 A3 01 74 */	stw r5, 0x174(r3)
/* 80496680  4B FF FF A9 */	bl aROD_init_proc
/* 80496684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496688  7C 08 03 A6 */	mtlr r0
/* 8049668C  38 21 00 10 */	addi r1, r1, 0x10
/* 80496690  4E 80 00 20 */	blr 
