lbl_80381694:
/* 80381694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80381698  7C 08 02 A6 */	mflr r0
/* 8038169C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803816A0  4B FF E8 D9 */	bl Camera2_Talk_SetTalking_Cull
/* 803816A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803816A8  7C 08 03 A6 */	mtlr r0
/* 803816AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803816B0  4E 80 00 20 */	blr 
