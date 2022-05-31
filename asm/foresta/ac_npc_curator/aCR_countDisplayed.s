lbl_8054BB44:
/* 8054BB44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054BB48  7C 08 02 A6 */	mflr r0
/* 8054BB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054BB50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054BB54  93 C1 00 08 */	stw r30, 8(r1)
/* 8054BB58  4B E7 C3 31 */	bl mMmd_CountDisplayedArt
/* 8054BB5C  7C 7F 1B 78 */	mr r31, r3
/* 8054BB60  4B E7 C2 C9 */	bl mMmd_CountDisplayedFossil
/* 8054BB64  7C 7E 1B 78 */	mr r30, r3
/* 8054BB68  4B E7 C3 81 */	bl mMmd_CountDisplayedInsect
/* 8054BB6C  7F FF 1A 14 */	add r31, r31, r3
/* 8054BB70  4B E7 C3 D9 */	bl mMmd_CountDisplayedFish
/* 8054BB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054BB78  7C 7F 1A 14 */	add r3, r31, r3
/* 8054BB7C  7C 7E 1A 14 */	add r3, r30, r3
/* 8054BB80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054BB84  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054BB88  7C 08 03 A6 */	mtlr r0
/* 8054BB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054BB90  4E 80 00 20 */	blr 
