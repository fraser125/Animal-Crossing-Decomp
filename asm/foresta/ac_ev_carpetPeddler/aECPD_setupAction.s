lbl_8051C880:
/* 8051C880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C884  7C 08 02 A6 */	mflr r0
/* 8051C888  3C C0 80 6A */	lis r6, process@ha /* 0x806A0264@ha */
/* 8051C88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C890  54 A0 10 3A */	slwi r0, r5, 2
/* 8051C894  38 C6 02 64 */	addi r6, r6, process@l /* 0x806A0264@l */
/* 8051C898  7C 06 00 2E */	lwzx r0, r6, r0
/* 8051C89C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8051C8A0  4B FF FF AD */	bl aECPD_init_proc
/* 8051C8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C8A8  7C 08 03 A6 */	mtlr r0
/* 8051C8AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C8B0  4E 80 00 20 */	blr 
