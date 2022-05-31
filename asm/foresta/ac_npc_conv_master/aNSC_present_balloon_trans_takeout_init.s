lbl_8054A67C:
/* 8054A67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A680  7C 08 02 A6 */	mflr r0
/* 8054A684  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A68C  7C 7F 1B 78 */	mr r31, r3
/* 8054A690  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 8054A694  98 03 09 A3 */	stb r0, 0x9a3(r3)
/* 8054A698  4B FF B7 61 */	bl aNSC_set_stop_spd
/* 8054A69C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8054A6A0  38 60 00 69 */	li r3, 0x69
/* 8054A6A4  48 0E 39 05 */	bl sAdo_OngenTrgStart
/* 8054A6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A6B0  7C 08 03 A6 */	mtlr r0
/* 8054A6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A6B8  4E 80 00 20 */	blr 
