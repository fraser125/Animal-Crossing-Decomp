lbl_8060384C:
/* 8060384C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603850  7C 08 02 A6 */	mflr r0
/* 80603854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060385C  7C 7F 1B 78 */	mr r31, r3
/* 80603860  80 63 00 00 */	lwz r3, 0(r3)
/* 80603864  4B DE 18 F5 */	bl _texture_z_light_fog_prim_xlu
/* 80603868  80 DF 00 00 */	lwz r6, 0(r31)
/* 8060386C  3C 60 80 B4 */	lis r3, ef_yuki01_setmode@ha /* 0x80B383A0@ha */
/* 80603870  3C 80 DE 00 */	lis r4, 0xde00
/* 80603874  80 A6 02 E0 */	lwz r5, 0x2e0(r6)
/* 80603878  38 03 83 A0 */	addi r0, r3, ef_yuki01_setmode@l /* 0x80B383A0@l */
/* 8060387C  38 65 00 08 */	addi r3, r5, 8
/* 80603880  90 66 02 E0 */	stw r3, 0x2e0(r6)
/* 80603884  90 85 00 00 */	stw r4, 0(r5)
/* 80603888  90 05 00 04 */	stw r0, 4(r5)
/* 8060388C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80603890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603894  7C 08 03 A6 */	mtlr r0
/* 80603898  38 21 00 10 */	addi r1, r1, 0x10
/* 8060389C  4E 80 00 20 */	blr 
