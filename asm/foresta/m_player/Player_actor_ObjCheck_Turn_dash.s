lbl_804E8844:
/* 804E8844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8848  7C 08 02 A6 */	mflr r0
/* 804E884C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8850  4B FE E2 E5 */	bl Player_actor_Excute_Corect_forStand
/* 804E8854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8858  7C 08 03 A6 */	mtlr r0
/* 804E885C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8860  4E 80 00 20 */	blr 
