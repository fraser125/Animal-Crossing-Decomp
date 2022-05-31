lbl_804E5800:
/* 804E5800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5804  7C 08 02 A6 */	mflr r0
/* 804E5808  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E580C  4B FF 24 8D */	bl Player_actor_BGcheck_common_type1
/* 804E5810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5814  7C 08 03 A6 */	mtlr r0
/* 804E5818  38 21 00 10 */	addi r1, r1, 0x10
/* 804E581C  4E 80 00 20 */	blr 
