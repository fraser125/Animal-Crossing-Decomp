lbl_80506248:
/* 80506248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050624C  7C 08 02 A6 */	mflr r0
/* 80506250  3C A0 80 64 */	lis r5, lit_1375@ha /* 0x80646A30@ha */
/* 80506254  3C 80 80 64 */	lis r4, lit_5641@ha /* 0x80647D6C@ha */
/* 80506258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050625C  C0 25 6A 30 */	lfs f1, lit_1375@l(r5)  /* 0x80646A30@l */
/* 80506260  C0 44 7D 6C */	lfs f2, lit_5641@l(r4)  /* 0x80647D6C@l */
/* 80506264  4B FD 18 C9 */	bl Player_actor_DisappearShadow_fromAnimationFrame
/* 80506268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050626C  7C 08 03 A6 */	mtlr r0
/* 80506270  38 21 00 10 */	addi r1, r1, 0x10
/* 80506274  4E 80 00 20 */	blr 
