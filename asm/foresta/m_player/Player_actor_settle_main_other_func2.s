lbl_804E07EC:
/* 804E07EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E07F0  7C 08 02 A6 */	mflr r0
/* 804E07F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E07F8  4B FF 94 8D */	bl Player_actor_SetFootMark_for_settle_main
/* 804E07FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0800  7C 08 03 A6 */	mtlr r0
/* 804E0804  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0808  4E 80 00 20 */	blr 
