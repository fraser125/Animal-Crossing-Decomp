lbl_803B68E0:
/* 803B68E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B68E4  7C 08 02 A6 */	mflr r0
/* 803B68E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B68EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B68F0  7C 9F 23 78 */	mr r31, r4
/* 803B68F4  93 C1 00 08 */	stw r30, 8(r1)
/* 803B68F8  7C 7E 1B 78 */	mr r30, r3
/* 803B68FC  4B FF FD E9 */	bl mEnv_RoomTypePointLightSet
/* 803B6900  7F C3 F3 78 */	mr r3, r30
/* 803B6904  7F E4 FB 78 */	mr r4, r31
/* 803B6908  4B FF FF 45 */	bl mEnv_RoomTypediffuseLightSet
/* 803B690C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B6914  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B6918  7C 08 03 A6 */	mtlr r0
/* 803B691C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6920  4E 80 00 20 */	blr 
