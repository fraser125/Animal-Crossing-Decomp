lbl_804E8AEC:
/* 804E8AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8AF0  7C 08 02 A6 */	mflr r0
/* 804E8AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8AF8  38 81 00 08 */	addi r4, r1, 8
/* 804E8AFC  4B FE DA 8D */	bl Player_actor_CulcAnimation_Base2
/* 804E8B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8B04  7C 08 03 A6 */	mtlr r0
/* 804E8B08  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8B0C  4E 80 00 20 */	blr 
