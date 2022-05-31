lbl_80603F5C:
/* 80603F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603F60  7C 08 02 A6 */	mflr r0
/* 80603F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80603F6C  7C 7F 1B 78 */	mr r31, r3
/* 80603F70  80 63 00 00 */	lwz r3, 0(r3)
/* 80603F74  4B DE 11 E5 */	bl _texture_z_light_fog_prim_xlu
/* 80603F78  80 DF 00 00 */	lwz r6, 0(r31)
/* 80603F7C  3C 60 80 9D */	lis r3, ef_hanabira01_00_setmode@ha /* 0x809C8FE0@ha */
/* 80603F80  3C 80 DE 00 */	lis r4, 0xde00
/* 80603F84  80 A6 02 E0 */	lwz r5, 0x2e0(r6)
/* 80603F88  38 03 8F E0 */	addi r0, r3, ef_hanabira01_00_setmode@l /* 0x809C8FE0@l */
/* 80603F8C  38 65 00 08 */	addi r3, r5, 8
/* 80603F90  90 66 02 E0 */	stw r3, 0x2e0(r6)
/* 80603F94  90 85 00 00 */	stw r4, 0(r5)
/* 80603F98  90 05 00 04 */	stw r0, 4(r5)
/* 80603F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80603FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603FA4  7C 08 03 A6 */	mtlr r0
/* 80603FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80603FAC  4E 80 00 20 */	blr 
