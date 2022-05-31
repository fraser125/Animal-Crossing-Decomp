lbl_80380E74:
/* 80380E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80380E78  7C 08 02 A6 */	mflr r0
/* 80380E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80380E80  4B FF F0 F9 */	bl Camera2_Talk_SetTalking_Cull
/* 80380E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80380E88  7C 08 03 A6 */	mtlr r0
/* 80380E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80380E90  4E 80 00 20 */	blr 
