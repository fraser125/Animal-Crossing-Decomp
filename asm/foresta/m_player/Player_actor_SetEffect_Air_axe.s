lbl_804F07EC:
/* 804F07EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F07F0  7C 08 02 A6 */	mflr r0
/* 804F07F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F07F8  4B FE 8F 79 */	bl Player_actor_SetEffectStart_axe_common
/* 804F07FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0800  7C 08 03 A6 */	mtlr r0
/* 804F0804  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0808  4E 80 00 20 */	blr 
