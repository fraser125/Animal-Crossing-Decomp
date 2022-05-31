lbl_804EF7A8:
/* 804EF7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF7AC  7C 08 02 A6 */	mflr r0
/* 804EF7B0  3C A0 80 64 */	lis r5, lit_2697@ha /* 0x80646C50@ha */
/* 804EF7B4  3C 80 80 64 */	lis r4, lit_4467@ha /* 0x80647B18@ha */
/* 804EF7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF7BC  C0 25 6C 50 */	lfs f1, lit_2697@l(r5)  /* 0x80646C50@l */
/* 804EF7C0  C0 44 7B 18 */	lfs f2, lit_4467@l(r4)  /* 0x80647B18@l */
/* 804EF7C4  4B FE 83 E9 */	bl Player_actor_AppearShadow_fromAnimationFrame
/* 804EF7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF7CC  7C 08 03 A6 */	mtlr r0
/* 804EF7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF7D4  4E 80 00 20 */	blr 
