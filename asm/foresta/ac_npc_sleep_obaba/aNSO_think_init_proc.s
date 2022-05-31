lbl_8057E7E0:
/* 8057E7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E7E4  7C 08 02 A6 */	mflr r0
/* 8057E7E8  3C 80 80 58 */	lis r4, aNSO_act_proc@ha /* 0x8057E72C@ha */
/* 8057E7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E7F0  38 00 00 00 */	li r0, 0
/* 8057E7F4  90 03 07 D8 */	stw r0, 0x7d8(r3)
/* 8057E7F8  38 04 E7 2C */	addi r0, r4, aNSO_act_proc@l /* 0x8057E72C@l */
/* 8057E7FC  90 03 08 04 */	stw r0, 0x804(r3)
/* 8057E800  4B FF FD E9 */	bl func_8057E5E8
/* 8057E804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E808  7C 08 03 A6 */	mtlr r0
/* 8057E80C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E810  4E 80 00 20 */	blr 
