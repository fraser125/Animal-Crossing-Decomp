lbl_805CCF3C:
/* 805CCF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CCF40  7C 08 02 A6 */	mflr r0
/* 805CCF44  38 A0 00 01 */	li r5, 1
/* 805CCF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CCF4C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CCF50  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000BAC0@ha */
/* 805CCF54  38 83 BA C0 */	addi r4, r3, 0xBAC0 /* 0x0000BAC0@l */
/* 805CCF58  80 66 09 C0 */	lwz r3, 0x9c0(r6)
/* 805CCF5C  80 63 00 00 */	lwz r3, 0(r3)
/* 805CCF60  4B E2 D0 01 */	bl mCD_save_data_aram_to_main
/* 805CCF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CCF68  7C 08 03 A6 */	mtlr r0
/* 805CCF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 805CCF70  4E 80 00 20 */	blr 
