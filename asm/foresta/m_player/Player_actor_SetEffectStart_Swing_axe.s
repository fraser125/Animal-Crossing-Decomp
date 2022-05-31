lbl_804EFE08:
/* 804EFE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EFE0C  7C 08 02 A6 */	mflr r0
/* 804EFE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EFE14  4B FE 99 5D */	bl Player_actor_SetEffectStart_axe_common
/* 804EFE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EFE1C  7C 08 03 A6 */	mtlr r0
/* 804EFE20  38 21 00 10 */	addi r1, r1, 0x10
/* 804EFE24  4E 80 00 20 */	blr 
