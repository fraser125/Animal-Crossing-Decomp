lbl_804E4B7C:
/* 804E4B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4B80  7C 08 02 A6 */	mflr r0
/* 804E4B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E4B8C  7C 9F 23 78 */	mr r31, r4
/* 804E4B90  93 C1 00 08 */	stw r30, 8(r1)
/* 804E4B94  7C 7E 1B 78 */	mr r30, r3
/* 804E4B98  4B FF 33 65 */	bl Player_actor_Reinput_force_position_angle
/* 804E4B9C  7F C3 F3 78 */	mr r3, r30
/* 804E4BA0  7F E4 FB 78 */	mr r4, r31
/* 804E4BA4  4B FF FE 09 */	bl Player_actor_request_proc_index_fromDma
/* 804E4BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E4BB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E4BB4  7C 08 03 A6 */	mtlr r0
/* 804E4BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4BBC  4E 80 00 20 */	blr 
