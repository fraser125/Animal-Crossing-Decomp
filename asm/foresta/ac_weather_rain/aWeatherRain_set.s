lbl_8060310C:
/* 8060310C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603110  7C 08 02 A6 */	mflr r0
/* 80603114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060311C  7C 7F 1B 78 */	mr r31, r3
/* 80603120  80 63 00 00 */	lwz r3, 0(r3)
/* 80603124  4B DE 20 35 */	bl _texture_z_light_fog_prim_xlu
/* 80603128  80 DF 00 00 */	lwz r6, 0(r31)
/* 8060312C  3C 60 80 9C */	lis r3, ef_ame02_setmode@ha /* 0x809BA080@ha */
/* 80603130  3C 80 DE 00 */	lis r4, 0xde00
/* 80603134  80 A6 02 E0 */	lwz r5, 0x2e0(r6)
/* 80603138  38 03 A0 80 */	addi r0, r3, ef_ame02_setmode@l /* 0x809BA080@l */
/* 8060313C  38 65 00 08 */	addi r3, r5, 8
/* 80603140  90 66 02 E0 */	stw r3, 0x2e0(r6)
/* 80603144  90 85 00 00 */	stw r4, 0(r5)
/* 80603148  90 05 00 04 */	stw r0, 4(r5)
/* 8060314C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80603150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603154  7C 08 03 A6 */	mtlr r0
/* 80603158  38 21 00 10 */	addi r1, r1, 0x10
/* 8060315C  4E 80 00 20 */	blr 
