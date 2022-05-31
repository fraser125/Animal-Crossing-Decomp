lbl_805337BC:
/* 805337BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805337C0  7C 08 02 A6 */	mflr r0
/* 805337C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805337C8  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 805337CC  28 00 00 05 */	cmplwi r0, 5
/* 805337D0  40 80 00 1C */	bge lbl_805337EC
/* 805337D4  3C A0 80 6A */	lis r5, act_proc_2938@ha /* 0x806A25F0@ha */
/* 805337D8  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 805337DC  38 A5 25 F0 */	addi r5, r5, act_proc_2938@l /* 0x806A25F0@l */
/* 805337E0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805337E4  7D 89 03 A6 */	mtctr r12
/* 805337E8  4E 80 04 21 */	bctrl 
lbl_805337EC:
/* 805337EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805337F0  7C 08 03 A6 */	mtlr r0
/* 805337F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805337F8  4E 80 00 20 */	blr 
