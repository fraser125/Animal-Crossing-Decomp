lbl_805367B8:
/* 805367B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805367BC  7C 08 02 A6 */	mflr r0
/* 805367C0  3C A0 80 6A */	lis r5, data_806A1400@ha /* 0x806A1400@ha */
/* 805367C4  38 80 00 01 */	li r4, 1
/* 805367C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805367CC  38 E5 14 00 */	addi r7, r5, data_806A1400@l /* 0x806A1400@l */
/* 805367D0  38 A0 00 00 */	li r5, 0
/* 805367D4  38 C0 00 00 */	li r6, 0
/* 805367D8  4B FF AE 25 */	bl aNPC_set_request_act
/* 805367DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805367E0  7C 08 03 A6 */	mtlr r0
/* 805367E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805367E8  4E 80 00 20 */	blr 