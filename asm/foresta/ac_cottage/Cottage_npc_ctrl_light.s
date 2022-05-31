lbl_80415F54:
/* 80415F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415F58  7C 08 02 A6 */	mflr r0
/* 80415F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415F64  7C 7F 1B 78 */	mr r31, r3
/* 80415F68  4B FF FF 0D */	bl Cottage_npc_light_aim
/* 80415F6C  3C 80 80 64 */	lis r4, lit_483@ha /* 0x80643BAC@ha */
/* 80415F70  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 80415F74  C0 44 3B AC */	lfs f2, lit_483@l(r4)  /* 0x80643BAC@l */
/* 80415F78  4B FA 4C F1 */	bl chase_f
/* 80415F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415F84  7C 08 03 A6 */	mtlr r0
/* 80415F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80415F8C  4E 80 00 20 */	blr 
