lbl_8049E7A0:
/* 8049E7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E7A4  7C 08 02 A6 */	mflr r0
/* 8049E7A8  3C 80 80 69 */	lis r4, aSI_wall_default_table@ha /* 0x8068E3D0@ha */
/* 8049E7AC  38 A0 00 02 */	li r5, 2
/* 8049E7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E7B4  38 84 E3 D0 */	addi r4, r4, aSI_wall_default_table@l /* 0x8068E3D0@l */
/* 8049E7B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049E7BC  7C 7F 1B 78 */	mr r31, r3
/* 8049E7C0  A8 03 01 90 */	lha r0, 0x190(r3)
/* 8049E7C4  54 00 08 3C */	slwi r0, r0, 1
/* 8049E7C8  7C 84 02 AE */	lhax r4, r4, r0
/* 8049E7CC  4B FF FF 4D */	bl aSI_CopyWallTexture
/* 8049E7D0  A8 1F 01 90 */	lha r0, 0x190(r31)
/* 8049E7D4  3C 60 80 69 */	lis r3, aSI_floor_default_table@ha /* 0x8068E3DC@ha */
/* 8049E7D8  38 83 E3 DC */	addi r4, r3, aSI_floor_default_table@l /* 0x8068E3DC@l */
/* 8049E7DC  38 A0 00 02 */	li r5, 2
/* 8049E7E0  54 00 08 3C */	slwi r0, r0, 1
/* 8049E7E4  7F E3 FB 78 */	mr r3, r31
/* 8049E7E8  7C 84 02 AE */	lhax r4, r4, r0
/* 8049E7EC  4B FF FE A5 */	bl aSI_CopyFloorTexture
/* 8049E7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049E7F8  7C 08 03 A6 */	mtlr r0
/* 8049E7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E800  4E 80 00 20 */	blr 
