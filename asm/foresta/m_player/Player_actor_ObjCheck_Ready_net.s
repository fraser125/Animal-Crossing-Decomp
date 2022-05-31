lbl_804F2064:
/* 804F2064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F2068  7C 08 02 A6 */	mflr r0
/* 804F206C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F2070  4B FE 4A C5 */	bl Player_actor_Excute_Corect_forStand
/* 804F2074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2078  7C 08 03 A6 */	mtlr r0
/* 804F207C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F2080  4E 80 00 20 */	blr 
