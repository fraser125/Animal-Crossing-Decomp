lbl_805424C4:
/* 805424C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805424C8  7C 08 02 A6 */	mflr r0
/* 805424CC  3C A0 80 6A */	lis r5, data_806A2B78@ha /* 0x806A2B78@ha */
/* 805424D0  38 80 00 01 */	li r4, 1
/* 805424D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805424D8  38 E5 2B 78 */	addi r7, r5, data_806A2B78@l /* 0x806A2B78@l */
/* 805424DC  38 A0 00 00 */	li r5, 0
/* 805424E0  38 C0 00 00 */	li r6, 0
/* 805424E4  4B FF CE BD */	bl aNPC_set_request_act
/* 805424E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805424EC  7C 08 03 A6 */	mtlr r0
/* 805424F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805424F4  4E 80 00 20 */	blr 
