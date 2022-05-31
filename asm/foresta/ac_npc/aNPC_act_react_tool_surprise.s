lbl_80534E2C:
/* 80534E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534E30  7C 08 02 A6 */	mflr r0
/* 80534E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80534E3C  7C 7F 1B 78 */	mr r31, r3
/* 80534E40  4B FF C5 FD */	bl aNPC_act_anm_seq
/* 80534E44  2C 03 00 00 */	cmpwi r3, 0
/* 80534E48  40 82 00 0C */	bne lbl_80534E54
/* 80534E4C  7F E3 FB 78 */	mr r3, r31
/* 80534E50  4B FF FF B5 */	bl func_80534E04
lbl_80534E54:
/* 80534E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80534E5C  7C 08 03 A6 */	mtlr r0
/* 80534E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80534E64  4E 80 00 20 */	blr 
