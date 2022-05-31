lbl_805059E8:
/* 805059E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805059EC  7C 08 02 A6 */	mflr r0
/* 805059F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805059F4  4B FD 22 A5 */	bl Player_actor_BGcheck_common_type1
/* 805059F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805059FC  7C 08 03 A6 */	mtlr r0
/* 80505A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80505A04  4E 80 00 20 */	blr 
