lbl_805FD01C:
/* 805FD01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FD020  7C 08 02 A6 */	mflr r0
/* 805FD024  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FD028  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805FD02C  80 85 09 D8 */	lwz r4, 0x9d8(r5)
/* 805FD030  80 A5 09 DC */	lwz r5, 0x9dc(r5)
/* 805FD034  4B FF FF 91 */	bl mTG_change_cporiginal_mark_main
/* 805FD038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FD03C  7C 08 03 A6 */	mtlr r0
/* 805FD040  38 21 00 10 */	addi r1, r1, 0x10
/* 805FD044  4E 80 00 20 */	blr 
