lbl_805211DC:
/* 805211DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805211E0  7C 08 02 A6 */	mflr r0
/* 805211E4  3C A0 80 52 */	lis r5, aEGPS_set_talk_info@ha /* 0x80521180@ha */
/* 805211E8  7C 64 1B 78 */	mr r4, r3
/* 805211EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805211F0  38 A5 11 80 */	addi r5, r5, aEGPS_set_talk_info@l /* 0x80521180@l */
/* 805211F4  38 60 00 07 */	li r3, 7
/* 805211F8  4B E7 8F 65 */	bl mDemo_Request
/* 805211FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521200  7C 08 03 A6 */	mtlr r0
/* 80521204  38 21 00 10 */	addi r1, r1, 0x10
/* 80521208  4E 80 00 20 */	blr 
