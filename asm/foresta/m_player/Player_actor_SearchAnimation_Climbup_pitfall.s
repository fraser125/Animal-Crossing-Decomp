lbl_805027EC:
/* 805027EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805027F0  7C 08 02 A6 */	mflr r0
/* 805027F4  3C A0 80 64 */	lis r5, lit_2697@ha /* 0x80646C50@ha */
/* 805027F8  3C 80 80 64 */	lis r4, lit_5593@ha /* 0x80647D68@ha */
/* 805027FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502800  C0 25 6C 50 */	lfs f1, lit_2697@l(r5)  /* 0x80646C50@l */
/* 80502804  C0 44 7D 68 */	lfs f2, lit_5593@l(r4)  /* 0x80647D68@l */
/* 80502808  4B FD 53 A5 */	bl Player_actor_AppearShadow_fromAnimationFrame
/* 8050280C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502810  7C 08 03 A6 */	mtlr r0
/* 80502814  38 21 00 10 */	addi r1, r1, 0x10
/* 80502818  4E 80 00 20 */	blr 
