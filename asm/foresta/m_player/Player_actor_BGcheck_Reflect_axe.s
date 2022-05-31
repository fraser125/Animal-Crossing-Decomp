lbl_804F1094:
/* 804F1094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1098  7C 08 02 A6 */	mflr r0
/* 804F109C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F10A0  4B FE 6B F9 */	bl Player_actor_BGcheck_common_type1
/* 804F10A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F10A8  7C 08 03 A6 */	mtlr r0
/* 804F10AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F10B0  4E 80 00 20 */	blr 
